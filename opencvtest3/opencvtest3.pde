
// Taken from: http://www.magicandlove.com/blog/2014/03/06/people-detection-in-processing-with-opencv/

import processing.video.*;

import java.util.*;
import java.nio.*;

import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.CvType;
import org.opencv.core.Scalar;
import org.opencv.objdetect.HOGDescriptor;
import org.opencv.core.MatOfRect;
import org.opencv.core.MatOfDouble;
import org.opencv.core.Rect;
import org.opencv.core.Size;
import org.opencv.imgproc.Imgproc;

Capture cap;
PImage small;
HOGDescriptor hog;

byte [] bArray;
int [] iArray;
int pixCnt1, pixCnt2;
int w, h;
float ratio;

void setup() {
  size(640, 480);
  ratio = 0.5;
  w = int(width*ratio);
  h = int(height*ratio);

  background(0);
  // Define and initialise the default capture device.
  cap = new Capture(this, width, height);
  cap.start();

  // Load the OpenCV native library.
  System.loadLibrary(Core.NATIVE_LIBRARY_NAME);
  println(Core.VERSION);

  // pixCnt1 is the number of bytes in the pixel buffer.
  // pixCnt2 is the number of integers in the PImage pixels buffer.
  pixCnt1 = w*h*4;
  pixCnt2 = w*h;

  // bArray is the temporary byte array buffer for OpenCV cv::Mat.
  // iArray is the temporary integer array buffer for PImage pixels.
  bArray = new byte[pixCnt1];
  iArray = new int[pixCnt2];

  small = createImage(w, h, ARGB);
  hog = new HOGDescriptor();
  hog.setSVMDetector(HOGDescriptor.getDefaultPeopleDetector());
  noFill();
  stroke(255, 255, 0);
}

void draw() {
  if (cap.available()) {
    cap.read();
  }
  else {
    return;
  }
  image(cap, 0, 0);
  // Resize the video to a smaller PImage.
  small.copy(cap, 0, 0, width, height, 0, 0, w, h);
  // Copy the webcam image to the temporary integer array iArray.
  arrayCopy(small.pixels, iArray);

  // Define the temporary Java byte and integer buffers.
  // They share the same storage.
  ByteBuffer bBuf = ByteBuffer.allocate(pixCnt1);
  IntBuffer iBuf = bBuf.asIntBuffer();

  // Copy the webcam image to the byte buffer iBuf.
  iBuf.put(iArray);

  // Copy the webcam image to the byte array bArray.
  bBuf.get(bArray);

  // Create the OpenCV cv::Mat.
  Mat m1 = new Mat(h, w, CvType.CV_8UC4);

  // Initialise the matrix m1 with content from bArray.
  m1.put(0, 0, bArray);
  // Prepare the grayscale matrix.
  Mat m3 = new Mat(h, w, CvType.CV_8UC1);
  Imgproc.cvtColor(m1, m3, Imgproc.COLOR_BGRA2GRAY);

  MatOfRect found = new MatOfRect();
  MatOfDouble weight = new MatOfDouble();

  hog.detectMultiScale(m3, found, weight, 0, new Size(8, 8), new Size(32, 32), 1.05, 2, false);

  Rect [] rects = found.toArray();
  if (rects.length > 0) {
    for (int i=0; i<rects.length; i++) {
      rect(rects[i].x/ratio, rects[i].y/ratio, rects[i].width/ratio, rects[i].height/ratio);
    }
  }
  text("Frame Rate: " + round(frameRate), 500, 50);
}

