#pragma once
#include "opencv2/opencv.hpp"
#include "bmutility.h"

class LaneDetector{
    cv::Point mMaskPts[4];
public:
    cv::Mat mMask;
    LaneDetector(cv::Point maskPts[]);
    cv::Mat mask(cv::Mat);
    std::vector<cv::Vec4i> detection(cv::Mat);
    void run(bm::FrameInfo& frame_info);
    std::vector<cv::Vec4i> postProcess(std::vector<cv::Vec4i> lines, float frame_width, float frame_height);
    std::vector<std::vector<cv::Vec4i> > lineSeparation(std::vector<cv::Vec4i> lines, 
                                                        float splitBound);
    std::vector<cv::Vec4i> regression(std::vector<std::vector<cv::Vec4i> > left_right_lines, 
                                                                               float rows);
};