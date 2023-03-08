#include "laneDetection.h"


LaneDetector::LaneDetector(cv::Point maskPts[]){
    for(int i = 0; i < 4; i ++)
        mMaskPts[i] = maskPts[i];
    int imgW = 1920;
    int imgH = 1080;
    mMask = cv::Mat::zeros(cv::Size(imgW, imgH), CV_8U);
    // Create a binary polygon mask
    cv::fillConvexPoly(mMask, mMaskPts, 4, cv::Scalar(255, 0, 0));
}

// 只处理图像中一部分区域
cv::Mat LaneDetector::mask(cv::Mat edges){
    cv::Mat mask;
    cv::resize(mMask, mask, edges.size(), 0, 0, cv::INTER_NEAREST);
    // Multiply the edges image and the mask to get the output
    cv::bitwise_and(edges, mask, edges);
    return edges;
}

// 车道线检测
std::vector<cv::Vec4i> LaneDetector::detection(cv::Mat image){
    cv::Mat gray, edges;
    std::vector<cv::Vec4i> lines;
    cv::cvtColor(image, gray, cv::COLOR_BGR2GRAY);
    cv::GaussianBlur( gray, gray, cv::Size(5, 5), 0, 0 );
    cv::Canny(gray, edges, 50, 150);
    edges = mask(edges);
    cv::HoughLinesP(edges, lines, 2, 3.14/180, 15, 40, 20 );
    return lines;
}

void LaneDetector::run(bm::FrameInfo& frame_info){
    auto& images = frame_info.frames;
    for(int batch_idx = 0; batch_idx < (int)images.size(); ++ batch_idx)
    {
        std::vector<cv::Vec4i> lines;
        lines = detection(images[batch_idx].cvimg);
        frame_info.vlines.push_back(lines);
    }
}

std::vector<cv::Vec4i> LaneDetector::postProcess(std::vector<cv::Vec4i> lines, float frame_width, float frame_height){
    std::vector<std::vector<cv::Vec4i> > left_right_lines;
    std::vector<cv::Vec4i> lane;
    left_right_lines = lineSeparation(lines, frame_width / 2.0);
    lane = regression(left_right_lines, frame_height);
    return lane;
}

std::vector<std::vector<cv::Vec4i> > LaneDetector::lineSeparation(std::vector<cv::Vec4i> lines, float splitBound) {
    std::vector<std::vector<cv::Vec4i> > output(2);
    size_t j = 0;
    cv::Point ini;
    cv::Point fini;
    double slope_thresh = 0.3;
    std::vector<double> slopes;
    std::vector<cv::Vec4i> selected_lines;
    std::vector<cv::Vec4i> right_lines, left_lines;

    // Calculate the slope of all the detected lines
    for (auto i : lines) {
        ini = cv::Point(i[0], i[1]);
        fini = cv::Point(i[2], i[3]);

        // Basic algebra: slope = (y1 - y0)/(x1 - x0)
        double slope = (static_cast<double>(fini.y) - static_cast<double>(ini.y)) / (static_cast<double>(fini.x) - static_cast<double>(ini.x) + 0.00001);

        // If the slope is too horizontal, discard the line
        // If not, save them  and their respective slope
        if (std::abs(slope) > slope_thresh) {
            slopes.push_back(slope);
            selected_lines.push_back(i);
        }
    }

    // Split the lines into right and left lines
    double img_center = static_cast<double>(splitBound);
    while (j < selected_lines.size()) {
        ini = cv::Point(selected_lines[j][0], selected_lines[j][1]);
        fini = cv::Point(selected_lines[j][2], selected_lines[j][3]);

        // Condition to classify line as left side or right side
        if (slopes[j] > 0 && fini.x > img_center && ini.x > img_center) {
            right_lines.push_back(selected_lines[j]);
        }
        else if (slopes[j] < 0 && fini.x < img_center && ini.x < img_center) {
            left_lines.push_back(selected_lines[j]);
        }
        j++;
    }

    output[0] = right_lines;
    output[1] = left_lines;

    return output;
}

std::vector<cv::Vec4i> LaneDetector::regression(std::vector<std::vector<cv::Vec4i> > left_right_lines, float rows) {
    std::vector<cv::Vec4i>  output(2);
    cv::Point ini;
    cv::Point fini;
    cv::Point ini2;
    cv::Point fini2;
    cv::Vec4d right_line;
    cv::Vec4d left_line;
    std::vector<cv::Point> right_pts;
    std::vector<cv::Point> left_pts;
    double right_m, left_m;
    cv::Point right_b, left_b;

    // If right lines are being detected, fit a line using all the init and final points of the lines
    if (left_right_lines[0].size() > 0) {
        for (auto i : left_right_lines[0]) {
            ini = cv::Point(i[0], i[1]);
            fini = cv::Point(i[2], i[3]);

            right_pts.push_back(ini);
            right_pts.push_back(fini);
        }

        if (right_pts.size() > 0) {
            // The right line is formed here
            cv::fitLine(right_pts, right_line, cv::DIST_L2, 0, 0.01, 0.01);
            right_m = right_line[1] / right_line[0];
            right_b = cv::Point(right_line[2], right_line[3]);
        }
    }

    // If left lines are being detected, fit a line using all the init and final points of the lines
    if (left_right_lines[1].size() > 0) {
        for (auto j : left_right_lines[1]) {
            ini2 = cv::Point(j[0], j[1]);
            fini2 = cv::Point(j[2], j[3]);

            left_pts.push_back(ini2);
            left_pts.push_back(fini2);
        }

        if (left_pts.size() > 0) {
            // The left line is formed here
            cv::fitLine(left_pts, left_line, cv::DIST_L2, 0, 0.01, 0.01);
            left_m = left_line[1] / left_line[0];
            left_b = cv::Point(left_line[2], left_line[3]);
        }
    }

    // One the slope and offset points have been obtained, apply the line equation to obtain the line points
    int ini_y = rows;
    int fin_y = rows*1/2;

    double right_ini_x = ((ini_y - right_b.y) / right_m) + right_b.x;
    double right_fin_x = ((fin_y - right_b.y) / right_m) + right_b.x;

    double left_ini_x = ((ini_y - left_b.y) / left_m) + left_b.x;
    double left_fin_x = ((fin_y - left_b.y) / left_m) + left_b.x;

    output[0] = cv::Vec4i(right_ini_x, ini_y, right_fin_x, fin_y);
    output[1] = cv::Vec4i(left_ini_x, ini_y, left_fin_x, fin_y);

    return output;
}