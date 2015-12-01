
//ellipse(50,50,80,80);

//void setup(){
//  size(480,120);
//}
//
//void draw(){
//  if(mousePressed){
//    fill(0);
//  }
//  else{
//    fill(255);
//  }
//  ellipse(mouseX, mouseY, 80, 80);  
//}

//size(400, 400);
//background(192, 64, 0);
//stroke(255);
//line(150, 25, 270, 350);

//stroke(255);               // sets the stroke color to white
//stroke(255, 255, 255);     // identical to the line above
//stroke(255, 128, 0);       // bright orange (red 255, green 128, blue 0)
//stroke(#FF8000);           // bright orange as a web color
//stroke(255, 128, 0, 128);  // bright orange with 50% transparency

//void setup() {
//  size(400, 400);
//  stroke(255);
//}
//
//void draw() {
//  line(0, 0, mouseX, mouseY);
//}
//
//void mousePressed() {
//  background(192, 64, 0); // fill everything out with orange
//}

//void setup(){
//  size(200,200);
//  rectMode(CENTER);
//  rect(100,100,20,100);
//  ellipse(100,70,60,60);
//  ellipse(81,70,16,32);
//  ellipse(119,70,16,32);
//  line(90,150,80,160);
//  line(110,150,120,160);
//}
//
//void draw() {
//  //line(0, 0, mouseX, mouseY);
//}
//
//void mousePressed() {
//  background(192, 64, 0); // fill everything out with orange
//}

//background(255);
//noStroke();
//
//// Bright red
//fill(255,0,0);
//ellipse(20,20,16,16);
//
//// Dark red
//fill(127,0,0);
//ellipse(40,20,16,16);
//
//// Pink (pale red)
//fill(255,200,200);
//ellipse(60,20,16,16);

size(200,200);
background(0);
noStroke();

// No fourth argument means 100% opacity.
fill(0,0,255);
rect(0,0,100,200);

// 255 means 100% opacity.
fill(255,0,0,255);
rect(0,0,200,40);

// 75% opacity.
fill(255,0,0,191);
rect(0,50,200,40);

// 55% opacity.
fill(255,0,0,127);
rect(0,100,200,40);

// 25% opacity.
fill(255,0,0,63);
rect(0,150,200,40);
