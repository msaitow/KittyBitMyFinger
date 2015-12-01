
//dbg//test1
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noStroke();
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(126);
//dbg  ellipse(mouseX, mouseY, 33, 33);
//dbg}

//dbg//test2
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noStroke();
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(126);
//dbg  ellipse(mouseX, 16, 33, 33);    // Top circle
//dbg  ellipse(mouseX+20, 50, 33, 33); // Middle circle
//dbg  ellipse(mouseX-20, 84, 33, 33); // Bottom circle
//dbg}

//dbg//tests3
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noStroke();
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(126);
//dbg  ellipse(mouseX, 16, 33, 33);   // Top circle
//dbg  ellipse(mouseX/2, 50, 33, 33); // Middle circle
//dbg  ellipse(mouseX*2, 84, 33, 33); // Bottom circle
//dbg}

//dbg//test4
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noStroke();
//dbg}
//dbg
//dbgvoid draw() {
//dbg  float x = mouseX;
//dbg  float y = mouseY;
//dbg  float ix = width - mouseX; // Inverse X
//dbg  float iy = height - mouseY; // Inverse Y
//dbg  background(126);
//dbg  fill(255, 150);
//dbg  ellipse(x, height/2, y, y);
//dbg  fill(0, 159);
//dbg  ellipse(ix, height/2, iy, iy);
//dbg}

//dbg//test4
//dbgvoid draw() {
//dbg  frameRate(12);
//dbg  println(pmouseX - mouseX);
//dbg}

//dbg//test5
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  strokeWeight(8);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  line(mouseX, mouseY, pmouseX, pmouseY);
//dbg}

//dbg//test5
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noStroke();
//dbg  fill(0);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  if (mouseX < 50) {
//dbg    rect(0, 0, 50, 100); // Left
//dbg  } else {
//dbg    rect(50, 0, 50, 100); // Right
//dbg  }
//dbg}

//dbg//test6
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noStroke();
//dbg  fill(0);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  if (mouseX < 33) {
//dbg    rect(0, 0, 33, 100); // Left
//dbg  } else if (mouseX < 66) {
//dbg    rect(33, 0, 33, 100); // Middle
//dbg  } else {
//dbg    rect(66, 0, 33, 100); // Right
//dbg  }
//dbg}

//dbg//test7
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noStroke();
//dbg  fill(0);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  if ((mouseX > 40) && (mouseX < 80) &&
//dbg      (mouseY > 20) && (mouseY < 80)) {
//dbg    fill(255);
//dbg  } else {
//dbg    fill(0);
//dbg  }
//dbg  rect(40, 20, 40, 60);
//dbg}

//dbg//test7
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noStroke();
//dbg  fill(0);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  if ((mouseX <= 50) && (mouseY <= 50)) {
//dbg    rect(0, 0, 50, 50); // Upper-left
//dbg  } else if ((mouseX <= 50) && (mouseY > 50)) {
//dbg    rect(0, 50, 50, 50); // Lower-left
//dbg  } else if ((mouseX > 50) && (mouseY <= 50)) {
//dbg    rect(50, 0, 50, 50); // Upper-right
//dbg  } else {
//dbg    rect(50, 50, 50, 50); // Lower-right
//dbg  }
//dbg}

//dbg//test8
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  if (mousePressed == true) {
//dbg    fill(255); // White
//dbg  } else {
//dbg    fill(0); // Black
//dbg  }
//dbg  rect(25, 25, 50, 50);
//dbg}

//dbg//test9
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  if (mouseButton == LEFT) {
//dbg    fill(0); // Black
//dbg  } else if (mouseButton == RIGHT) {
//dbg    fill(255); // White
//dbg  } else {
//dbg    fill(126); // Gray
//dbg  }
//dbg  rect(25, 25, 50, 50);
//dbg}

//dbg//test10
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  if (mousePressed == true) {
//dbg    if (mouseButton == LEFT) {
//dbg      fill(0); // Black
//dbg    } else if (mouseButton == RIGHT) {
//dbg      fill(255); // White
//dbg    }
//dbg  } else {
//dbg    fill(126); // Gray
//dbg  }
//dbg  rect(25, 25, 50, 50);
//dbg}

//dbg//test11
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  strokeWeight(4);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  if (keyPressed == true) { // If the key is pressed,
//dbg    line(20, 20, 80, 80); // draw a line
//dbg  } else { // Otherwise,
//dbg    rect(40, 40, 20, 20); // draw a rectangle
//dbg  }
//dbg}

//dbg//test12
//dbgint x = 20;
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  strokeWeight(4);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  if (keyPressed == true) { // If the key is pressed
//dbg    x++; // add 1 to x
//dbg  }
//dbg  line(x, 20, x-60, 80);
//dbg}

//dbg//test13
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  textSize(60);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(0);
//dbg  text(key, 20, 75); // Draw at coordinate (20,75)
//dbg}

//dbg//test14
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  strokeWeight(4);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  // If the 'A' key is pressed draw a line
//dbg  if ((keyPressed == true) && (key == 'A')) {
//dbg    line(50, 25, 50, 75);
//dbg  } else { // Otherwise, draw an ellipse
//dbg    ellipse(50, 50, 50, 50);
//dbg  }
//dbg}

//dbg//test15
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  stroke(0);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  if (keyPressed == true) {
//dbg    int x = key - 32;
//dbg    line(x, 0, x, height);
//dbg  }
//dbg}

//dbg//test16
//dbgfloat angle = 0;
//dbg
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  fill(0);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  if (keyPressed == true) {
//dbg    if ((key >= 32) && (key <= 126)) {
//dbg      // If the key is alphanumeric, // use its value as an angle
//dbg      angle = (key - 32) * 3;
//dbg    }
//dbg  }
//dbg  arc(50, 50, 66, 66, 0, radians(angle));
//dbg}

//dbg//test16
//dbgint y = 35;
//dbg
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  line(10, 50, 90, 50);
//dbg  if (key == CODED) {
//dbg    if (keyCode == UP) {
//dbg      y = 20;
//dbg    } else if (keyCode == DOWN) {
//dbg      y = 50;
//dbg    }
//dbg  } else {
//dbg    y = 35;
//dbg  }
//dbg  rect(25, y, 50, 30);
//dbg}

//dbg//test17
//dbgint gray = 0;
//dbg
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(gray);
//dbg}
//dbg
//dbgvoid mousePressed() {
//dbg  gray += 20;
//dbg}

//dbg//test18
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  fill(0, 102);
//dbg}
//dbg
//dbgvoid draw() {
//dbg} // Empty draw() keeps the program running
//dbg
//dbgvoid mousePressed() {
//dbg  rect(mouseX, mouseY, 33, 33);
//dbg}

//dbg//test19
//dbgint dragX, dragY, moveX, moveY;
//dbg
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noStroke();
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  fill(0);
//dbg  ellipse(dragX, dragY, 33, 33); // Black circle
//dbg  fill(153);
//dbg  ellipse(moveX, moveY, 33, 33); // Gray circle
//dbg}
//dbg
//dbgvoid mouseMoved() { // Move gray circle
//dbg  moveX = mouseX;
//dbg  moveY = mouseY;
//dbg}
//dbg
//dbgvoid mouseDragged() { // Move black circle
//dbg  dragX = mouseX;
//dbg  dragY = mouseY;
//dbg}

//dbg//test20
//dbgboolean drawT = false;
//dbg
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noStroke();
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  if (drawT == true) {
//dbg    rect(20, 20, 60, 20);
//dbg    rect(39, 40, 22, 45);
//dbg  }
//dbg}
//dbg
//dbgvoid keyPressed() {
//dbg  if ((key == 'T') || (key == 't')) {
//dbg    drawT = true;
//dbg  }
//dbg}

//dbg//test21
//dbgboolean drawT = false;
//dbg
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noStroke();
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  if (drawT == true) {
//dbg    rect(20, 20, 60, 20);
//dbg    rect(39, 40, 22, 45);
//dbg  }
//dbg}
//dbg
//dbgvoid keyPressed() {
//dbg  if ((key == 'T') || (key == 't')) {
//dbg    drawT = true;
//dbg  }
//dbg}
//dbg
//dbgvoid keyReleased() {
//dbg  drawT = false;
//dbg}

//dbg//test22
//dbgint frame = 0;
//dbg
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg}
//dbg
//dbgvoid draw() {
//dbg  if (frame > 12000) { // If 120 frames since the mouse
//dbg    noLoop(); // was pressed, stop the program
//dbg    background(0); // and turn the background black.
//dbg  } else { // Otherwise, set the background
//dbg    background(204); // to light gray and draw lines
//dbg    line(mouseX, 0, mouseX, 100); // at the mouse position
//dbg    line(0, mouseY, 100, mouseY);
//dbg    frame++;
//dbg  }
//dbg}
//dbg
//dbgvoid mousePressed() {
//dbg  loop();
//dbg  frame = 0;
//dbg}

//dbg//test23
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noLoop();
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  line(mouseX, 0, mouseX, 100);
//dbg  line(0, mouseY, 100, mouseY);
//dbg}

//dbg//test24
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  strokeWeight(7);
//dbg  noCursor();
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  ellipse(mouseX, mouseY, 10, 10);
//dbg}

//dbg//test25
//dbgvoid setup() {
//dbg  size(100, 100);
//dbg  noCursor();
//dbg}
//dbg
//dbgvoid draw() {
//dbg  background(204);
//dbg  if (mousePressed == true) {
//dbg    cursor();
//dbg  }
//dbg}

//test26
void setup() {
  size(100, 100);
}

void draw() {
  background(204);
  if (mousePressed == true) {
    cursor(HAND); // Draw cursor as hand
  } else {
    cursor(CROSS);
  }
  line(mouseX, 0, mouseX, height);
  line(0, mouseY, height, mouseY);
}
