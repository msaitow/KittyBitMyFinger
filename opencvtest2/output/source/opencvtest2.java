import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import imageTranslater.*; 
import org.opencv.core.*; 
import org.opencv.imgproc.*; 
import org.opencv.highgui.*; 
import org.opencv.features2d.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class opencvtest2 extends PApplet {


// Codes were taken from http://qiita.com/endoh0509/items/2b3fe05288735ac629a3







ImageTranslater imgTrans;
VideoCapture capture;
FeatureDetection feature;
Mat captureImage;
PImage img;

public void setup() {
  imgTrans = new ImageTranslater(this);
  System.loadLibrary(Core.NATIVE_LIBRARY_NAME);
  capture = new VideoCapture(0);
  feature = new FeatureDetection(FeatureDetector.SIFT);
  captureImage = new Mat();
  size(640, 480);
}

public void draw() {
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
public class FeatureDetection {

  Mat image;
  FeatureDetector featuer;
  MatOfKeyPoint keyPoints;

  public FeatureDetection(int _type) {
    image = new Mat();
    featuer = FeatureDetector.create(_type);
    keyPoints = new MatOfKeyPoint();
  }

  public void detection() {
    featuer.detect(image, keyPoints);
  }

  public Point[] getPoints() {
    Point[] points = new Point[keyPoints.toArray().length];
    for (int i = 0; i < points.length; i++) {
      points[i] = keyPoints.toArray()[i].pt;
    }
    return points;
  }

  public void setImage(Mat _image) {
    image = _image;
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "opencvtest2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
