//
// Created by hsyuan on 2021-02-22.
//

#include "yolov5s.h"

YoloV5::YoloV5(bm::BMNNContextPtr bmctx, int max_batch, float warning_thresh):
m_bmctx(bmctx),MAX_BATCH(max_batch), m_warningThresh(warning_thresh)
{
    // the bmodel has only one yolo network.
    auto net_name = m_bmctx->network_name(0);
    m_bmnet = std::make_shared<bm::BMNNNetwork>(m_bmctx->bmrt(), net_name);
    assert(m_bmnet != nullptr);
    assert(m_bmnet->inputTensorNum() == 1);
    auto tensor = m_bmnet->inputTensor(0);

    //YOLOV5 input is NCHW
    m_net_h = tensor->get_shape()->dims[2];
    m_net_w = tensor->get_shape()->dims[3];
}

// YoloV5::YoloV5(bm::BMNNContextPtr bmctx, LaneDetector laner, int max_batch):m_bmctx(bmctx), MAX_BATCH(max_batch)
// {
//     mlaner = laner;
//     // the bmodel has only one yolo network.
//     auto net_name = m_bmctx->network_name(0);
//     m_bmnet = std::make_shared<bm::BMNNNetwork>(m_bmctx->bmrt(), net_name);
//     assert(m_bmnet != nullptr);
//     assert(m_bmnet->inputTensorNum() == 1);
//     auto tensor = m_bmnet->inputTensor(0);

//     //YOLOV5 input is NCHW
//     m_net_h = tensor->get_shape()->dims[2];
//     m_net_w = tensor->get_shape()->dims[3];
// }


YoloV5::~YoloV5()
{

}

int YoloV5::preprocess(std::vector<bm::FrameBaseInfo>& frames, std::vector<bm::FrameInfo>& frame_infos)
{
    int ret = 0;
    bm_handle_t handle = m_bmctx->handle();

    // Check input
    int total = frames.size();
    int left = (total%MAX_BATCH == 0 ? MAX_BATCH: total%MAX_BATCH);
    int batch_num = total%MAX_BATCH==0 ? total/MAX_BATCH: (total/MAX_BATCH + 1);
    for(int batch_idx = 0; batch_idx < batch_num; ++ batch_idx) {
        int num = MAX_BATCH;
        int start_idx = batch_idx*MAX_BATCH;
        if (batch_idx == batch_num-1) {
            // last one
            num = left;
        }

        bm::FrameInfo finfo;
        //1. Resize
        bm_image resized_imgs[MAX_BATCH];
        ret = bm::BMImage::create_batch(handle, m_net_h, m_net_w, FORMAT_RGB_PLANAR, DATA_TYPE_EXT_1N_BYTE, resized_imgs, num, 64);
        assert(BM_SUCCESS == ret);

        for(int i = 0;i < num; ++i) {
            bm_image image1;
            bm::BMImage::from_avframe(handle, frames[start_idx + i].avframe, image1, true);
            ret = bmcv_image_vpp_convert(handle, 1, image1, &resized_imgs[i]);
            assert(BM_SUCCESS == ret);

            // convert data to jpeg
            uint8_t *jpeg_data=NULL;
            size_t out_size = 0;
#if USE_QTGUI
            bmcv_image_jpeg_enc(handle, 1, &image1, (void**)&jpeg_data, &out_size);
#endif
            frames[start_idx + i].jpeg_data = std::make_shared<bm::Data>(jpeg_data, out_size);
            frames[start_idx + i].height= image1.height;
            frames[start_idx + i].width = image1.width;
            ////////////////////////////////////////////
            // ente
            cv::Mat tmp;
            cv::bmcv::toMAT(&resized_imgs[i], tmp, true);
            frames[start_idx + i].cvimg = tmp;
            /////////////////////////////////////////////
            av_frame_unref(frames[start_idx + i].avframe);
            av_frame_free(&frames[start_idx + i].avframe);

            finfo.frames.push_back(frames[start_idx+i]);
            bm_image_destroy(image1);
        }

        //2. Convert to
        bm_image convertto_imgs[MAX_BATCH];
        float alpha, beta;

        bm_image_data_format_ext img_type = DATA_TYPE_EXT_FLOAT32;
        auto inputTensorPtr = m_bmnet->inputTensor(0);
        if (inputTensorPtr->get_dtype() == BM_INT8) {
            img_type = DATA_TYPE_EXT_1N_BYTE_SIGNED;
            alpha            = 0.847682119;
            beta             = -0.5;
            img_type = (DATA_TYPE_EXT_1N_BYTE_SIGNED);
        }else{
            alpha            = 1.0/255;
            beta             = 0.0;
            img_type = DATA_TYPE_EXT_FLOAT32;
        }

        ret = bm::BMImage::create_batch(handle, m_net_h, m_net_w, FORMAT_RGB_PLANAR, img_type, convertto_imgs, num, 1, false, true);
        assert(BM_SUCCESS == ret);

        bm_tensor_t input_tensor = *inputTensorPtr->bm_tensor();
        bm::bm_tensor_reshape_NCHW(handle, &input_tensor, num, 3, m_net_h, m_net_w);

        ret = bm_image_attach_contiguous_mem(num, convertto_imgs, input_tensor.device_mem);
        assert(BM_SUCCESS == ret);

        bmcv_convert_to_attr convert_to_attr;
        convert_to_attr.alpha_0 = alpha;
        convert_to_attr.alpha_1 = alpha;
        convert_to_attr.alpha_2 = alpha;
        convert_to_attr.beta_0  = beta;
        convert_to_attr.beta_1  = beta;
        convert_to_attr.beta_2  = beta;

        ret = bmcv_image_convert_to(m_bmctx->handle(), num, convert_to_attr, resized_imgs, convertto_imgs);
        assert(ret == 0);

        bm_image_dettach_contiguous_mem(num, convertto_imgs);

        finfo.input_tensors.push_back(input_tensor);

        bm::BMImage::destroy_batch(resized_imgs, num);
        bm::BMImage::destroy_batch(convertto_imgs, num);

        frame_infos.push_back(finfo);
    }


}

int YoloV5::forward(std::vector<bm::FrameInfo>& frame_infos)
{
    int ret = 0;
    for(int b = 0; b < frame_infos.size(); ++b) {
        for (int i = 0; i < m_bmnet->outputTensorNum(); ++i) {
            bm_tensor_t tensor;
            frame_infos[b].output_tensors.push_back(tensor);
        }

#if DUMP_FILE
        bm::BMImage::dump_dev_memory(bmctx_->handle(), frame_infos[b].input_tensors[0].device_mem, "convertto",
                frame_infos[b].frames.size(), m_net_h, m_net_w, false, false);
#endif
        ret = m_bmnet->forward(frame_infos[b].input_tensors.data(), frame_infos[b].input_tensors.size(),
                              frame_infos[b].output_tensors.data(), frame_infos[b].output_tensors.size());
        assert(BM_SUCCESS == ret);

        /////////////////////////////////////////////////////////////////
        // ente: line detection
        mlaner->run(frame_infos[b]);
        /////////////////////////////////////////////////////////////////
    }
    return 0;
}

int YoloV5::postprocess(std::vector<bm::FrameInfo> &frame_infos)
{
    for(int i=0;i < frame_infos.size(); ++i) {

        // Free AVFrames
        auto frame_info = frame_infos[i];

        // extract face detection
        extract_yolobox_cpu(frame_info);

        if (m_pfnDetectFinish != nullptr) {
            m_pfnDetectFinish(frame_info);
        }

        for(int j = 0; j < frame_info.frames.size(); ++j) {

            auto reff = frame_info.frames[j];
            assert(reff.avpkt != nullptr);
            av_packet_unref(reff.avpkt);
            av_packet_free(&reff.avpkt);

            assert(reff.avframe == nullptr);
            av_frame_unref(reff.avframe);
            av_frame_free(&reff.avframe);
        }

        // Free Tensors
        for(auto& tensor : frame_info.input_tensors) {
            bm_free_device(m_bmctx->handle(), tensor.device_mem);
        }

        for(auto& tensor: frame_info.output_tensors) {
            bm_free_device(m_bmctx->handle(), tensor.device_mem);
        }

    }
}

float YoloV5::sigmoid(float x)
{
    return 1.0 / (1 + expf(-x));
}

int YoloV5::argmax(float* data, int num) {
    float max_value = 0.0;
    int max_index = 0;
    for(int i = 0; i < num; ++i) {
        float sigmoid_value = sigmoid(data[i]);
        if (sigmoid_value > max_value) {
            max_value = sigmoid_value;
            max_index = i;
        }
    }

    return max_index;
}

float YoloV5::get_aspect_scaled_ratio(int src_w, int src_h, int dst_w, int dst_h, bool *pIsAligWidth)
{
    float ratio;
    ratio = (float) dst_w / src_w;
    int dst_h1 = src_h * ratio;
    if (dst_h1 > dst_h) {
        *pIsAligWidth = false;
        ratio = (float) src_w / src_h;
    } else {
        *pIsAligWidth = true;
        ratio = (float)src_h/src_w;
    }

    return ratio;
}


void YoloV5::NMS(bm::NetOutputObjects &dets, float nmsConfidence)
{
    int length = dets.size();
    int index = length - 1;

    std::sort(dets.begin(), dets.end(), [](const bm::NetOutputObject& a, const bm::NetOutputObject& b) {
        return a.score < b.score;
    });

    std::vector<float> areas(length);
    for (int i=0; i<length; i++)
    {
        areas[i] = dets[i].width() * dets[i].height();
    }

    while (index  > 0)
    {
        int i = 0;
        while (i < index)
        {
            float left    = std::max(dets[index].x1,   dets[i].x1);
            float top     = std::max(dets[index].y1,    dets[i].y1);
            float right   = std::min(dets[index].x1 + dets[index].width(),  dets[i].x1 + dets[i].width());
            float bottom  = std::min(dets[index].y1 + dets[index].height(), dets[i].y1 + dets[i].height());
            float overlap = std::max(0.0f, right - left) * std::max(0.0f, bottom - top);
            if (overlap / (areas[index] + areas[i] - overlap) > nmsConfidence)
            {
                areas.erase(areas.begin() + i);
                dets.erase(dets.begin() + i);
                index --;
            }
            else
            {
                i++;
            }
        }
        index--;
    }
}

void YoloV5::extract_yolobox_cpu(bm::FrameInfo& frameInfo)
{
    std::vector<bm::NetOutputObject> yolobox_vec;
    std::vector<cv::Rect> bbox_vec;
    auto& images = frameInfo.frames;
    for(int batch_idx = 0; batch_idx < (int)images.size(); ++ batch_idx)
    {
        yolobox_vec.clear();
        auto& frame = images[batch_idx];
        int frame_width = frame.width;
        int frame_height = frame.height;

#if USE_ASPECT_RATIO
        bool isAlignWidth = false;
        get_aspect_scaled_ratio(frame.cols, frame.rows, m_net_w, m_net_h, &isAlignWidth);

        if (isAlignWidth) {
            frame_height = frame_width*(float)m_net_h/m_net_w;
        }else{
            frame_width = frame_height*(float)m_net_w/m_net_h;
        }
#endif

        int output_num = m_bmnet->outputTensorNum();
        int nout = m_class_num + 5;

        if (output_num == 1) {
            bm::BMNNTensor output_tensor(m_bmctx->handle(), "", 1.0, &frameInfo.output_tensors[0]);
            int box_num = output_tensor.get_shape()->dims[1];
            float *output_data = (float*)output_tensor.get_cpu_data() + batch_idx*box_num*nout;
            for (int i = 0; i < box_num; i++) {
                float *ptr = output_data + i * nout;
                float score = ptr[4];
                if (score >= m_objThreshold) {
                    int class_id = argmax(&ptr[5], m_class_num);
                    float confidence = ptr[class_id + 5];
                    if (confidence >= m_confThreshold) {
                        bm::NetOutputObject box;
                        box.score = confidence * score;
                        if (box.score >= m_confThreshold) {
                            float centerX = (ptr[0]+1)/m_net_w*frame_width-1;
                            float centerY = (ptr[1]+1)/m_net_h*frame_height-1;
                            float width = (ptr[2]+0.5) * frame_width / m_net_w;
                            float height = (ptr[3]+0.5) * frame_height / m_net_h;
                            box.x1  = int(centerX - width  / 2);
                            box.y1  = int(centerY - height / 2);
                            box.x2  = box.x1 + width;
                            box.y2  = box.y1 + height;
                            box.class_id = class_id;
                            // calc obj distance
                            calcPosition(box);

                            yolobox_vec.push_back(box);
                        }
                    }
                }
            }
        } else if (output_num == 3){
            for(int tidx = 0; tidx < output_num; ++tidx) {
                bm::BMNNTensor output_tensor(m_bmctx->handle(), "", 1.0, &frameInfo.output_tensors[tidx]);
                int feat_h = output_tensor.get_shape()->dims[2];
                int feat_w = output_tensor.get_shape()->dims[3];
                int area = feat_h * feat_w;
                float *output_data = (float*)output_tensor.get_cpu_data() + batch_idx*3*area*nout;
                for (int anchor_idx = 0; anchor_idx < m_anchor_num; anchor_idx++)
                {
                    int feature_size = feat_h*feat_w*nout;
                    float *ptr = output_data + anchor_idx*feature_size;
                    for (int i = 0; i < area; i++) {
                        float score = sigmoid(ptr[4]);
                        if(score > m_objThreshold)
                        {
                            float centerX = (sigmoid(ptr[0]) * 2 - 0.5 + i % feat_w) * frame_width / feat_w;
                            float centerY = (sigmoid(ptr[1]) * 2 - 0.5 + i / feat_h) * frame_height / feat_h; //center_y
                            float width   = pow((sigmoid(ptr[2]) * 2), 2) * m_anchors[tidx][anchor_idx][0] * frame_width  / m_net_w; //w
                            float height  = pow((sigmoid(ptr[3]) * 2), 2) * m_anchors[tidx][anchor_idx][1] * frame_height / m_net_h; //h
                            bm::NetOutputObject box;
                            box.x1  = int(centerX - width  / 2);
                            box.y1  = int(centerY - height / 2);
                            box.x2  = box.x1 + width;
                            box.y2  = box.y1 + height;
                            int class_id = argmax(&ptr[5], m_class_num);
                            box.score = sigmoid(ptr[class_id + 5]) * score;
                            box.class_id = class_id;
                            // calc obj distance
                            calcPosition(box);
                            
                            if (box.score >= m_confThreshold) {
                                yolobox_vec.push_back(box);
                            }
                        }
                        ptr += (m_class_num + 5);
                    }
                }
            } // end of tidx
        } else {
            std::cerr << "Unsupported yolo ouput layer num: " << output_num << std::endl;
            assert(output_num == 1 || output_num == 3);
        }
        
        NMS(yolobox_vec, m_nmsThreshold);
        for(int idx=0; idx < (int)yolobox_vec.size(); idx++){
            if(yolobox_vec[idx].distance<m_warningThresh)
                yolobox_vec[idx].isWarning = 1;
            else
                yolobox_vec[idx].isWarning = 0;
        }
        // ente
        std::vector<cv::Vec4i> lane;
        lane = mlaner->postProcess(frameInfo.vlines[batch_idx], m_net_w, m_net_h);
        for(int laneIdx = 0; laneIdx< lane.size(); laneIdx++){
            lane[laneIdx][0] = (double)lane[laneIdx][0]/m_net_w*frame_width;
            lane[laneIdx][2] = (double)lane[laneIdx][2]/m_net_w*frame_width;
            lane[laneIdx][1] = (double)lane[laneIdx][1]/m_net_h*frame_height;
            lane[laneIdx][3] = (double)lane[laneIdx][3]/m_net_h*frame_height;
        }

        if(yolobox_vec.size()==0){
            bm::NetOutputObject box;
            yolobox_vec.push_back(box);
        }  
        yolobox_vec[0].lines = lane;
        
        bm::NetOutputDatum datum(yolobox_vec);
        frameInfo.out_datums.push_back(datum);

    }
}

void YoloV5::calcPosition(bm::NetOutputObject& box)
{
    double y = box.y2;
    double x = (box.x1 + box.x2)/2.0;
    cv::Mat pt(3,1,CV_64F);
    pt.at<double>(0,0) = x;
    pt.at<double>(1,0) = y;
    pt.at<double>(2,0) = 1.0;
    cv::Mat tmp = HInv * pt;
    double positionX = tmp.at<double>(0,0)/tmp.at<double>(2,0);
    double positionY = tmp.at<double>(1,0)/tmp.at<double>(2,0);
    // box.position = cv::Point(positionX/100, -positionY/100);
    box.distance = -positionY/100;
}

