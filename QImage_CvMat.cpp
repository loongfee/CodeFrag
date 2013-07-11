// convert QImage to/from OpenCV mat

Mat qimage2mat(const QImage& qimage) { 
    cv::Mat mat = cv::Mat(qimage.height(), qimage.width(), CV_8UC4, (uchar*)qimage.bits(), qimage.bytesPerLine()); 
    cv::Mat mat2 = cv::Mat(mat.rows, mat.cols, CV_8UC3 ); 
    int from_to[] = { 0,0,  1,1,  2,2 }; 
    cv::mixChannels( &mat, 1, &mat2, 1, from_to, 3 ); 
    return mat2; 
}; 

QImage mat2qimage(const Mat& mat) { 
    Mat rgb; 
    cvtColor(mat, rgb, CV_BGR2RGB); 
    return QImage((const unsigned char*)(rgb.data), rgb.cols, rgb.rows, QImage::Format_RGB888); 
}; 