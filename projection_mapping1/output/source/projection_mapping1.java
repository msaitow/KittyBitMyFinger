import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.video.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class projection_mapping1 extends PApplet {


// Take from http://d.hatena.ne.jp/kougaku-navi/20120109/p1




Movie mov;            // \u52d5\u753b
int   selected = -1;  // \u9078\u629e\u3055\u308c\u3066\u3044\u308b\u9802\u70b9
int   pos[][] = {{0,0},{400,0},{400,300},{0,300}}; // \u9802\u70b9\u5ea7\u6a19

public void setup() {
  //size( 1024, 768, P2D);              // \u753b\u9762\u30b5\u30a4\u30ba\uff08\u9069\u5b9c\u8abf\u6574\uff09
  size(displayWidth, displayHeight, P2D);              // \u753b\u9762\u30b5\u30a4\u30ba\uff08\u9069\u5b9c\u8abf\u6574\uff09  
  mov = new Movie(this,"street.mov");  // \u52d5\u753b\u30d5\u30a1\u30a4\u30eb\u306e\u8aad\u307f\u8fbc\u307f
  mov.loop();                         // \u52d5\u753b\u30eb\u30fc\u30d7\u518d\u751f
  println("screen.width="  + displayWidth);
  println("screen.height=" + displayHeight);  
}

public void draw() {
  background(0);
  mov.read(); // \u30102014/09/27\u3011 \u8ffd\u8a18\u3057\u307e\u3057\u305f\u3002Processing2.2.1\u3067\u52d5\u4f5c\u3092\u78ba\u8a8d\u3002

  // \u30d3\u30c7\u30aa\u30c6\u30af\u30b9\u30c1\u30e3\u306e\u63cf\u753b
  beginShape();
  texture(mov);
  vertex(pos[0][0], pos[0][1], 0, 0);
  vertex(pos[1][0], pos[1][1], mov.width, 0);
  vertex(pos[2][0], pos[2][1], mov.width, mov.height);
  vertex(pos[3][0], pos[3][1], 0, mov.height);
  endShape(CLOSE);

  // \u30de\u30a6\u30b9\u306b\u3088\u308b\u9802\u70b9\u64cd\u4f5c
  if ( mousePressed && selected >= 0 ) {
    pos[selected][0] = mouseX;
    pos[selected][1] = mouseY;
  }
  else {
    float min_d = 20; // \u3053\u306e\u5024\u304c\u9802\u70b9\u3078\u306e\u5438\u7740\u306e\u5ea6\u5408\u3044\u3092\u6c7a\u3081\u308b
    selected = -1;
    for (int i=0; i<4; i++) {
      float d = dist( mouseX, mouseY, pos[i][0], pos[i][1] );
      if ( d < min_d ) {
        min_d = d;
        selected = i;
      }
    }
  }
  if ( selected >= 0 ) {
    ellipse( mouseX, mouseY, 20, 20 );
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "projection_mapping1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
