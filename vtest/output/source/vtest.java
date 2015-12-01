import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.video.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class vtest extends PApplet {


//ver.1// import processing.video.*;
//ver.1// 
//ver.1// Capture cam;
//ver.1// 
//ver.1// void setup(){
//ver.1//   size(420, 320);
//ver.1//   cam = new Capture(this, width, height, 15);
//ver.1// }
//ver.1// 
//ver.1// void captureEvent(Capture cam){
//ver.1//   cam.read();
//ver.1// }
//ver.1// 
//ver.1// void draw(){
//ver.1//   image(cam, 0, 0);
//ver.1// }



Capture cam;

public void setup() {
  size(800, 600);
  try {
    String[] cameras = Capture.list();
    if (cameras == null || cameras.length == 0) { // \u3053\u3053\u306bnull check\u8ffd\u52a0\u3057\u305f\u3002
      println("no camera!!!!!");
      exit();
    }
    else {
      println("DEVICE resolution");
      for (int i = 0; i < cameras.length; i++) {
        println("" + i + "," + cameras[i]);
      }
      cam = new Capture(this, cameras[0]);
      println("device start");
      cam.start();
    }
  }
  catch (Exception e) { // exception\u6642\u306bstacktrace\u3092\u30ed\u30b0\u51fa\u529b
    e.printStackTrace();
  }
}

public void draw() {
  if (cam.available()) {
    cam.read();
  }
  set(0, 0, cam); // this is faster than image(cam, 0, 0)
  // image(cam, 0, 0);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "vtest" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
