import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class pvector extends PApplet {

PVector v1, v2;

public void setup() {
  noLoop();
  v1 = new PVector(40, 20);
  v2 = new PVector(25, 50);
}

public void draw() {
  ellipse(v1.x, v1.y, 12, 12);
  ellipse(v2.x, v2.y, 12, 12);
  v2.add(v1);
  ellipse(v2.x, v2.y, 24, 24);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "pvector" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
