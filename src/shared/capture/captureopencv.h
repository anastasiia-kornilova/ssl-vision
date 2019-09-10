#pragma once


#ifdef OPENCV4
#include <opencv2/highgui.hpp>
#else
#include <opencv/highgui.h>
#endif
#include <opencv2/videoio.hpp>

#include "captureinterface.h"

class CaptureOpenCv : public CaptureInterface
{
public:
    CaptureOpenCv(VarList * _settings=0);
    virtual ~CaptureOpenCv();

    virtual RawImage getFrame();
    virtual bool isCapturing();
    virtual void releaseFrame();
    virtual bool startCapture();
    virtual bool stopCapture();
    virtual string getCaptureMethodName() const;

private:
    cv::VideoCapture mCapture;
    VarList *mCaptureSettings;
    RawImage frame;
    VarString *mIndex;
    QMutex mutex;
};