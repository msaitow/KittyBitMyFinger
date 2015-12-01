
// //test1
// println("printing some text to the message window!");  // Printing a String
// PImage img = loadImage("filename.jpg");                // Using a String for a file name
// // No file name!

// //test2
// String message = "some text here.";
// char c = message.charAt(3);
// println(c);                // Results in 'e'

// //test3
// String message = "This String is 34 characters long.";
// println(message.length());
// 
// String uppercase = message.toUpperCase();
// println(uppercase);

// //test4
// String one = "hello";
// String two = "hello";
// println(one == two);

// //test5
// String one = "hello";
// String two = "hello";
// println(one.equals(two));

//println(mouseX);

// //test6
// PFont f;                           // STEP 1 Declare PFont variable
// 
// void setup() {
//   size(200,200);
//   f = createFont("Arial",16,true); // STEP 2 Create Font
// }
// 
// void draw() {
//   background(255);
//   textFont(f,16);                  // STEP 3 Specify font to be used
//   fill(0);                         // STEP 4 Specify font color
//   text("Hello Strings!",10,100);   // STEP 5 Display Text
// }

// //test7
// PFont f;
// 
// void setup() {
//   size(400,200);
//   f = createFont("Arial",16,true);
// }
// 
// void draw() {
//   background(255);
// 
//   stroke(175);
//   line(width/2,0,width/2,height);
// 
//   textFont(f);
//   fill(0);
// 
//   textAlign(CENTER);
//   text("This text is centered.",width/2,60);
// 
//   textAlign(LEFT);
//   text("This text is left aligned.",width/2,100);
// 
//   textAlign(RIGHT);
//   text("This text is right aligned.",width/2,140);
// }

//test8

//dbg // An array of news headlines
//dbg 
//dbg String[] headlines = {
//dbg   "Processing downloads break downloading record.",
//dbg   "New study shows computer programming lowers cholesterol.",
//dbg };
//dbg 
//dbg // A headline
//dbg //String headline = "New study shows computer programming lowers cholesterol.";
//dbg PFont f;  // Global font variable
//dbg float x;  // horizontal location of headline
//dbg int index = 0;
//dbg 
//dbg void setup() {
//dbg   size(400,200);
//dbg   f = createFont("Arial",16,true);  // Loading font
//dbg   x = width; // initializing headline off-screen to the right
//dbg }
//dbg 
//dbg void draw(){
//dbg   background(255);
//dbg   fill(0);
//dbg   
//dbg   // Display headline at x  location
//dbg   textFont(f,16);
//dbg   textAlign(LEFT);
//dbg   text(headlines[index],x,180);
//dbg   x = x - 3;
//dbg 
//dbg   // If x is less than the negative width, then it is completely off the screen
//dbg   float w = textWidth(headlines[index]);
//dbg   if (x < -w) {
//dbg     x = width;
//dbg     index = (index + 1) % headlines.length;
//dbg   }
//dbg   
//dbg }
//dbg 
//dbg //dbg // An array of news headlines
//dbg //dbg 
//dbg //dbg String[] headlines = {
//dbg //dbg   "Processing downloads break downloading record.",
//dbg //dbg   "New study shows computer programming lowers cholesterol.",
//dbg //dbg };
//dbg //dbg 
//dbg //dbg PFont f;  // Global font variable
//dbg //dbg float x;  // horizontal location of headline
//dbg //dbg int index = 0;
//dbg //dbg 
//dbg //dbg void setup() {
//dbg //dbg   size(400,200);
//dbg //dbg   f = createFont("Arial",16,true);
//dbg //dbg   // Initialize headline offscreen to the right
//dbg //dbg   x = width;
//dbg //dbg }
//dbg //dbg 
//dbg //dbg void draw() {
//dbg //dbg   background(255);
//dbg //dbg   fill(0);
//dbg //dbg 
//dbg //dbg   // Display headline at x  location
//dbg //dbg   textFont(f,16);
//dbg //dbg   textAlign(LEFT);
//dbg //dbg   text(headlines[index],x,180);
//dbg //dbg 
//dbg //dbg   // Decrement x
//dbg //dbg   x = x - 3;
//dbg //dbg 
//dbg //dbg   // If x is less than the negative width,
//dbg //dbg   // then it is off the screen
//dbg //dbg   float w = textWidth(headlines[index]);
//dbg //dbg   if (x < -w) {
//dbg //dbg     x = width;
//dbg //dbg     index = (index + 1) % headlines.length;
//dbg //dbg   }
//dbg //dbg }

//dbg //test9
//dbg 
//dbg PFont f;
//dbg String message = "this text is spinning";
//dbg float theta;
//dbg 
//dbg void setup() {
//dbg   size(200, 200);
//dbg   f = createFont("Arial",20,true);
//dbg }
//dbg 
//dbg void draw() {
//dbg   background(255);
//dbg   fill(0);
//dbg   textFont(f);                  // Set the font
//dbg   translate(width/2,height/2);  // Translate to the center
//dbg   rotate(theta);                // Rotate by theta
//dbg   textAlign(CENTER);
//dbg   text(message,0,0);
//dbg   theta += 0.05;                // Increase rotation
//dbg }

//dbg //test10
//dbg PFont f;
//dbg String message = "Each character is written individually.";
//dbg 
//dbg void setup() {
//dbg   size(400, 150);
//dbg   f = createFont("Arial",20,true);
//dbg }
//dbg 
//dbg void draw() {
//dbg   background(255);
//dbg   fill(0);
//dbg   textFont(f);
//dbg   int x = 10;
//dbg   for (int i = 0; i < message.length(); i++) {
//dbg     textSize(random(12,36));
//dbg     text(message.charAt(i),x,height/2);
//dbg     // textWidth() spaces the characters out properly.
//dbg     x += textWidth(message.charAt(i));
//dbg   }
//dbg   noLoop();
//dbg }

//dbg //test11
//dbg PFont f;
//dbg String message = "click mouse to shake it up";
//dbg // An array of Letter objects
//dbg Letter[] letters;
//dbg 
//dbg void setup() {
//dbg   size(260, 200);
//dbg   // Load the font
//dbg   f = createFont("Arial",20,true);
//dbg   textFont(f);
//dbg 
//dbg   // Create the array the same size as the String
//dbg   letters = new Letter[message.length()];
//dbg   // Initialize Letters at the correct x location
//dbg   int x = 16;
//dbg   for (int i = 0; i < message.length(); i++) {
//dbg     letters[i] = new Letter(x,100,message.charAt(i));
//dbg     x += textWidth(message.charAt(i));
//dbg   }
//dbg }
//dbg 
//dbg void draw() {
//dbg   background(255);
//dbg   for (int i = 0; i < letters.length; i++) {
//dbg     // Display all letters
//dbg     letters[i].display();
//dbg 
//dbg     // If the mouse is pressed the letters shake
//dbg     // If not, they return to their original location
//dbg     if (mousePressed) {
//dbg       letters[i].shake();
//dbg     } else {
//dbg       letters[i].home();
//dbg     }
//dbg   }
//dbg }
//dbg 
//dbg // A class to describe a single Letter
//dbg class Letter {
//dbg   char letter;
//dbg   // The object knows its original "home" location
//dbg   float homex,homey;
//dbg   // As well as its current location
//dbg   float x,y;
//dbg 
//dbg   Letter (float x_, float y_, char letter_) {
//dbg     homex = x = x_;
//dbg     homey = y = y_;
//dbg     letter = letter_;
//dbg   }
//dbg 
//dbg   // Display the letter
//dbg   void display() {
//dbg     fill(0);
//dbg     textAlign(LEFT);
//dbg     text(letter,x,y);
//dbg   }
//dbg 
//dbg   // Move the letter randomly
//dbg   void shake() {
//dbg     x += random(-2,2);
//dbg     y += random(-2,2);
//dbg   }
//dbg 
//dbg   // Return the letter home
//dbg   void home() {
//dbg     x = homex;
//dbg     y = homey;
//dbg   }
//dbg }

//dbg //test12
//dbg PFont f;
//dbg // The radius of a circle
//dbg float r = 100;
//dbg // The width and height of the boxes
//dbg float w = 40;
//dbg float h = 40;
//dbg 
//dbg void setup() {
//dbg   size(320, 320);
//dbg   smooth();
//dbg }
//dbg 
//dbg void draw() {
//dbg   background(255);
//dbg 
//dbg   // Start in the center and draw the circle
//dbg   translate(width / 2, height / 2);
//dbg   noFill();
//dbg   stroke(0);
//dbg   // Our curve is a circle with radius r in the center of the window.
//dbg   ellipse(0, 0, r*2, r*2);
//dbg 
//dbg   // 10 boxes along the curve
//dbg   int totalBoxes = 10;
//dbg   // We must keep track of our position along the curve
//dbg   float arclength = 0;
//dbg 
//dbg   // For every box
//dbg   for (int i = 0; i < totalBoxes; i++) {
//dbg     // Each box is centered so we move half the width
//dbg     arclength += w/2;
//dbg     // Angle in radians is the arclength divided by the radius
//dbg     float theta = arclength / r;
//dbg 
//dbg     pushMatrix();
//dbg     // Polar to cartesian coordinate conversion
//dbg     translate(r*cos(theta), r*sin(theta));
//dbg     // Rotate the box
//dbg     rotate(theta);
//dbg     // Display the box
//dbg     fill(0,100);
//dbg     rectMode(CENTER);
//dbg     rect(0,0,w,h);
//dbg     popMatrix();
//dbg     // Move halfway again
//dbg     arclength += w/2;
//dbg   }
//dbg }

//test13
// The message to be displayed
String message = "text along a curve";

PFont f;
// The radius of a circle
float r = 100;

void setup() {
  size(320, 320);
  f = createFont("Georgia",40,true);
  textFont(f);
  // The text must be centered!
  textAlign(CENTER);
  smooth();
}

void draw() {
  background(255);

  // Start in the center and draw the circle
  translate(width / 2, height / 2);
  noFill();
  stroke(0);
  ellipse(0, 0, r*2, r*2);

  // We must keep track of our position along the curve
  float arclength = 0;

  // For every box
  for (int i = 0; i < message.length(); i++)
  {
    // Instead of a constant width, we check the width of each character.
    char currentChar = message.charAt(i);
    float w = textWidth(currentChar);

    // Each box is centered so we move half the width
    arclength += w/2;
    // Angle in radians is the arclength divided by the radius
    // Starting on the left side of the circle by adding PI
    float theta = PI + arclength / r;

    pushMatrix();
    // Polar to cartesian coordinate conversion
    translate(r*cos(theta), r*sin(theta));
    // Rotate the box
    rotate(theta+PI/2); // rotation is offset by 90 degrees
    // Display the character
    fill(0);
    text(currentChar,0,0);
    popMatrix();
    // Move halfway again
    arclength += w/2;
  }
}
