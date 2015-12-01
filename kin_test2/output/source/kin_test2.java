import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import org.openkinect.processing.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class kin_test2 extends PApplet {

/*
Thomas Sanchez Lengeling
http://codigogenerativo.com/

How to use multiple Kinects v2 in the same sketch.
Should work up n number of Kinects v2 connected to the USB 3.0 port.

https://github.com/shiffman/OpenKinect-for-Processing
http://shiffman.net/p5/kinect/
*/



Kinect2 kinect2a;
Kinect2 kinect2b;

public void setup() {
  size(1536, 848, P2D);

  kinect2a = new Kinect2(this);
  kinect2a.initDepth();
  kinect2a.initVideo();
  kinect2a.initIR();

  kinect2b = new Kinect2(this);
  kinect2b.initDepth();
  kinect2b.initVideo();
  kinect2b.initIR();

  //Start tracking each kinect
  kinect2a.initDevice(0); //index 0
  kinect2b.initDevice(1); //index 1

  background(0);
}

public void draw() {
  background(0);

  image(kinect2a.getDepthImage(), 0, 0);
  image(kinect2a.getIrImage(), 512, 0);
  image(kinect2a.getVideoImage(), 512*2, 0, 512, 424);
  
//orig   image(kinect2a.getDepthImage(), 0, 0);
//orig   image(kinect2a.getIrImage(), 512, 0);
//orig   image(kinect2a.getVideoImage(), 512*2, 0, 512, 424);
//orig 
//orig   image(kinect2b.getDepthImage(), 0, 424);
//orig   image(kinect2b.getIrImage(), 512, 424);
//orig   image(kinect2b.getVideoImage(), 512*2, 424, 512, 424);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "kin_test2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
