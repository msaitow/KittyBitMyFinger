
// Codes were taken from http://qiita.com/endoh0509/items/2b3fe05288735ac629a3

import imageTranslater.*;
import org.opencv.core.*;
import org.opencv.imgproc.*;
import org.opencv.highgui.*;
import org.opencv.features2d.*;

ImageTranslater imgTrans;
VideoCapture capture;
FeatureDetection feature;
Mat captureImage;
PImage img;

void setup() {
  imgTrans = new ImageTranslater(this);
  System.loadLibrary(Core.NATIVE_LIBRARY_NAME);
  capture = new VideoCapture(0);
  feature = new FeatureDetection(FeatureDetector.SIFT);
  captureImage = new Mat();
  size(640, 480);
}

void draw() {
  background(0);
  noStroke();
  fill(255, 255, 0, 100);
  if (capture.isOpened()) {
    capture.read(captureImage);
    Size sz = new Size(width, height);
    Mat resizeimage = new Mat();
    Imgproc.resize(captureImage, resizeimage, sz);
    feature.setImage(resizeimage);
    feature.detection();
    image(imgTrans.MatToPImageRGB(this, resizeimage), 0, 0);
    for (Point p : feature.getPoints ()) {
      ellipse((float)p.x, (float)p.y, 10, 10);
    }
  }
}
