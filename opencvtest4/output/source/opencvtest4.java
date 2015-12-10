import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import gab.opencv.*; 
import processing.video.*; 
import java.awt.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class opencvtest4 extends PApplet {





Capture video;
OpenCV opencv;

Sphere[] spheres;
int numSpheres = 30;

Rectangle[] faces;
PImage miku;

public void setup() {
  
  size(640, 480);
  video = new Capture(this, width/2, height/2);
  opencv = new OpenCV(this, width/2, height/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  miku = loadImage("miku1.jpeg");  
  //test image(miku, width/4, height/4);
  
  video.start();

  spheres = new Sphere[numSpheres];
  for(int i = 0;i < spheres.length;++i){
    float x  = random(width/2);
    float y  = random(height/2);
    float vx = random(-5,5);
    float vy = random(-5,5);       
    PVector loc = new PVector(x , y );
    PVector vel = new PVector(vx, vy);
    PVector acc = new PVector(0, 0);
    float diam = random(5);
    spheres[i] = new Sphere(loc, vel, acc, diam);
  }
  frameRate(50);
  noStroke();
}

public void draw() {
  scale(2);
  opencv.loadImage(video);

  //background(0); // Make background black so that the rect looks like it's moving
  //background(255); // Make background white so that the rect looks like it's moving    
  image(video, 0, 0 ); // Every time the image from the vide is set as background

  //fill(0); // Makes the face black
  //fill(255); // Makes the face white
  noFill(); // Make the face seeable
  
  stroke(0, 255, 0); // Make the frame green
  strokeWeight(3); // Make the frame width 3
  //Rectangle[] faces = opencv.detect();
  faces = opencv.detect();  
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }

  //rect(0, 0, width, height);  
  for(int i = 0;i < spheres.length;++i){
    spheres[i].Update();
    spheres[i].Show();
  }  
//yoshumi  ellipse(width/2, height/2, 50, 50);
//yoshumi  ellipse(0      , height/2, 50, 50);  // hidari shita
//yoshumi  ellipse(width/2, 0       , 50, 50);
//yoshumi  ellipse(0      , 0       , 50, 50);
  
}

public void captureEvent(Capture c) {
  c.read();
}

float g_const = 9.80665f * 1e-2f; // Gravity acceleration in earth in m/s^2
//float g_const = 2; // Gravity acceleration in earth in m/s^2
PVector acc_g = new PVector(0, g_const);

class Sphere{
  PVector loc;    // location
  PVector vel;    // velocity
  PVector acc;    // Acceleration
  float diameter; // Diameter of the circle
  float mass;     // Weight

  // (x,y)    = (x0, y0)
  // (dx,dy)  = (v_x0, v_y0)
  // (ax, ay) = (a_x0, a_y0)
  Sphere(PVector loc0, PVector vel0, PVector acc0, float diam){
    loc = loc0;
    vel = vel0;
    acc = acc0;
    diameter = diam;
  }

  public void Update(){

    // Did I hit the face?
    for (int i = 0; i < faces.length; ++i) {
      int x1 = faces[i].x;
      int x2 = faces[i].x + faces[i].width;
      int y1 = faces[i].y;
      int y2 = faces[i].y + faces[i].height;

//      if(loc.x >= x1 && loc.x <= x2 && loc.y >= y1 && loc.y <= y2){
//        float d_x1  = abs(x1-loc.x);
//        float d_x2  = abs(x2-loc.x);
//        float d_y1  = abs(y1-loc.y);
//        float d_y2  = abs(y2-loc.y);        
//        float d_min = min(min(d_x1,d_x2),min(d_y1,d_y2));
//        if(d_min == d_x1 || d_min == d_x2) vel.x = -vel.x;
//        if(d_min == d_y1 || d_min == d_y2) vel.y = -vel.y;        
//        //if(loc.y >= y1 && loc.y <= y2) vel.y = -vel.y;      
//        //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
//      }

      // (1) Bound on x1
      {
        double nextx = loc.x + vel.x;
        // If I pass the x1-line from left to right and otherway around
        if((loc.x < x1 && nextx >= x1) || (loc.x >= x1 && nextx < x1)) {
          loc.x = x1;
          vel.x = -vel.x;
        }             
      }//(1)      

      // (2) Bound on y1
      {
        double nexty = loc.y + vel.y;
        // If I pass the y1-line from down to up and otherway around
        if((loc.y < y1 && nexty >= y1) || (loc.y >= y1 && nexty < y1)) {
          loc.y = y1;
          vel.y = -vel.y;
        }             
      }//(2)      

      // (3) Bound on x2
      {
        double nextx = loc.x + vel.x;
        // If I pass the x2-line from left to right and otherway around
        if((loc.x < x2 && nextx >= x2) || (loc.x >= x2 && nextx < x2)) {
          loc.x = x2;
          vel.x = -vel.x;
        }             
      }//(3)      

      // (4) Bound on y2
      {
        double nexty = loc.y + vel.y;
        // If I pass the y2-line from down to up and otherway around
        if((loc.y < y2 && nexty >= y2) || (loc.y >= y2 && nexty < y2)) {
          loc.y = y2;
          vel.y = -vel.y;
        }             
      }//(4)      
      
    }//i
    
    // (0) Am I in the screen?
    if((loc.x <  width/2 && loc.y <  height/2) && (loc.x >= 0 && loc.y >= 0)){
      loc.add(vel);
      vel.add(acc);
      vel.add(acc_g); // effect of gravity
    }
    // (1) There's something about x
    if((loc.x >= width/2 && loc.y <  height/2) || (loc.x <  0 && loc.y >= 0)){
      if((loc.x >= width/2 && vel.x > 0) || (loc.x <  0 && vel.x <= 0)){
        if(loc.x >= width/2 && vel.x > 0) loc.x = width/2;
        else                              loc.x = 0;
        vel.x = -vel.x;
      }
      loc.add(vel);
      vel.add(acc);
      vel.add(acc_g); // effect of gravity
    }
    // (2) There's something about y
    if((loc.x <  width/2 && loc.y >= height/2) || (loc.x >= 0 && loc.y <  0)){      
      if((loc.y >= height/2 && vel.y > 0) || (loc.y <  0 && vel.y <= 0)){
        if(loc.y >= height/2 && vel.y > 0) loc.y = height/2;
        else                               loc.y = 0;
        vel.y = -vel.y;
      }
      loc.add(vel);
      vel.add(acc);
      vel.add(acc_g); // effect of gravity
    }
    // (3) There's something about both x and y
    if((loc.x >= width/2 && loc.y >= height/2) || (loc.x <  0 && loc.y <  0)){
      if((loc.x >= width/2  && vel.x > 0) || (loc.x <  0 && vel.x <= 0)){
        if(loc.x >= width/2  && vel.x > 0) loc.x = width/2;
        else                               loc.x = 0;
        vel.x = -vel.x;
      }
      if((loc.y >= height/2 && vel.y > 0) || (loc.y <  0 && vel.y <= 0)){
        if(loc.y >= height/2 && vel.y > 0) loc.y = height/2;
        else                               loc.y = 0;
        vel.y = -vel.y;
      }
      loc.add(vel);
      vel.add(acc);
      vel.add(acc_g); // effect of gravity
    }    
  }//End update

  public void Show(){
    //println("xXx");
    fill(255); // Make the face seeable    
    stroke(0, 255, 0); // Make the frame green
    strokeWeight(3); // Make the frame width 3    
    //ellipse(loc.x, loc.y, diameter, diameter);
    ellipse(loc.x, loc.y, 10, 10);
    //image(miku, loc.x, loc.y);
    
    // Did I hit the face?
    for (int i = 0; i < faces.length; ++i) {
      ellipse(faces[i].x               , faces[i].y                , 5, 5);            
      ellipse(faces[i].x               , faces[i].y+faces[i].height, 5, 5);            
      ellipse(faces[i].x+faces[i].width, faces[i].y                , 5, 5);
      ellipse(faces[i].x+faces[i].width, faces[i].y+faces[i].height, 5, 5);            
    }
    
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "opencvtest4" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
