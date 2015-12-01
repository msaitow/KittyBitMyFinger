
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

import processing.video.*;

Capture cam;

void setup() {
  size(800, 600);
  try {
    String[] cameras = Capture.list();
    if (cameras == null || cameras.length == 0) { // ここにnull check追加した。
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
  catch (Exception e) { // exception時にstacktraceをログ出力
    e.printStackTrace();
  }
}

void draw() {
  if (cam.available()) {
    cam.read();
  }
  set(0, 0, cam); // this is faster than image(cam, 0, 0)
  // image(cam, 0, 0);
}
