
// //test1
// fill(0);
// text("LAX", 0, 40);  // Write "LAX" at coordinate (0,40)
// text("AMS", 0, 70);  // Write "AMS" at coordinate (0,70)
// text("FRA", 0, 100); // Write "FRA" at coordinate (0,100)

// //test2
// textSize(32); // Set text size to 32
// fill(0);
// text("LAX", 0, 40);
// text("ORD", 0, 70);
// text("DAY", 0, 100);

// //test3
// textSize(32);
// fill(0);   // Fill color black
// text("LAX", 0, 40);
// fill(126); // Fill color gray
// text("HKG", 0, 70);
// fill(255); // Fill color white
// text("PVG", 0, 100);

// //test4
// textSize(64);
// fill(0, 140); // Fill black with low opacity
// text("8", 0, 60);
// text("8", 15, 65);
// text("8", 30, 70);
// text("8", 45, 75);
// text("8", 60, 80);

// //test5
// String s = "Five hexing wizard bots jump quickly.";
// fill(0);
// text(s, 10, 10, 60, 80);

// //test6
// String s = "Five hexing wizard bots jump quickly.";
// fill(0);
// text(s, 10, 10, 60, 55); // Box too small

// //test7
// PFont zigBlack;
// 
// void setup() {
//   size(100, 100);
//   zigBlack = createFont("Ziggurat-Black", 32);
//   textFont(zigBlack);
//   fill(0);
// }
// 
// void draw() {
//   background(204);
//   text("LAX", 0, 40);
//   text("LHR", 0, 70);
//   text("TXL", 0, 100);
// }

// //test8
// PFont sourceLight;
// 
// void setup() {
//   size(100, 100);
//   sourceLight = createFont("SourceCodePro-Light.otf", 34);
//   textFont(sourceLight);
//   fill(0);
// }
// 
// void draw() {
//   background(204);
//   text("LAX", 0, 40);
//   text("LHR", 0, 70);
//   text("TXL", 0, 100);
// }

// //test9
// PFont zigBlack, sourceLight;
// 
// void setup() {
//   size(100, 100);
//   zigBlack = createFont("Ziggurat-Black", 24);
//   sourceLight = createFont("SourceCodePro-Light.otf", 34);
//   fill(0);
// }
// 
// void draw() {
//   background(204);
//   textFont(zigBlack);
//   text("LAX", 0, 40);
//   textFont(sourceLight);
//   text("LHR", 0, 70);
//   textFont(zigBlack);
//   text("TXL", 0, 100);
// }

// //test10
// PFont zigBlack;
// 
// void setup() {
//   size(100, 100);
//   zigBlack = loadFont("Avenir-Medium-48.vlw");
//   textFont(zigBlack);
//   fill(0);
// }
// 
// void draw() {
//   background(204);
//   text("LAX", 0, 40);
//   text("LHR", 0, 70);
//   text("TXL", 0, 100);
// }

// //test11
// PFont zigBlack;
// 
// void setup() {
//   size(100, 100);
//   zigBlack = loadFont("Zapfino-48.vlw");
//   textFont(zigBlack);
//   fill(0);
// }
// 
// void draw() {
//   background(204);
//   textSize(12);
//   text("A", 20, 20);
//   textSize(96);
//   text("A", 20, 90);
// }

// //test12
// String lines = "L1 L2 L3";
// textSize(12);
// fill(0);
// textLeading(10);
// text(lines, 10, 15, 30, 100);
// textLeading(20);
// text(lines, 40, 15, 30, 100);
// textLeading(30);
// text(lines, 70, 15, 30, 100);

// //test13
// fill(0);
// textSize(12);
// line(50, 0, 50, 100);
// textAlign(LEFT);
// text("Left", 50, 20);
// textAlign(RIGHT);
// text("Right", 50, 40);
// textAlign(CENTER);
// text("Center", 50, 80);

// //test14
// String s = "AEIOU";
// float tw; // Text width
// fill(0);
// textSize(14);
// tw = textWidth(s);
// text(s, 4, 40);
// rect(4, 42, tw, 5);
// textSize(28);
// tw = textWidth(s);
// text(s, 4, 76);
// rect(4, 78, tw, 5);

// //test15
// String letters = "";
// 
// void setup() {
//   size(100, 100);
//   stroke(255);
//   fill(0);
//   textSize(16);
// }
// 
// void draw() {
//   background(204);
//   float cursorPosition = textWidth(letters);
//   line(cursorPosition, 0, cursorPosition, 100);
//   text(letters, 0, 50);
// }
// 
// void keyPressed() {
//   if (key == BACKSPACE) {
//     if (letters.length() > 0) {
//       letters = letters.substring(0, letters.length()-1);
//     }
//   } else if (textWidth(letters+key) < width) {
//     letters = letters + key;
//   }
// }

// //test16
// String letters = "";
// int back = 102;
// 
// void setup() {
//   size(100, 100);
//   textSize(16);
//   textAlign(CENTER);
// }
// 
// void draw() {
//   background(back);
//   text(letters, 50, 50);
// }
// 
// void keyPressed() {
//   if ((key == ENTER) || (key == RETURN)) {
//     letters = letters.toLowerCase();
//     println(letters); // Print to console to see input
//     if (letters.equals("black")) {
//       back = 0;
//     } else if (letters.equals("gray")) {
//       back = 204;
//     }
//     letters = ""; // Clear the variable
//   } else if ((key > 31) && (key != CODED)) {
//     // If the key is alphanumeric, add it to the String
//     letters = letters + key;
//   }
// }

// //test17
// void setup() {
//   size(100, 100);
//   textSize(24);
//   textAlign(CENTER);
// }
// 
// void draw() {
//   background(204);
//   text("avoid", width-mouseX, height-mouseY);
// }

//test18
float x = 33;
float y = 60;

void setup() {
  size(100, 100);
  textSize(24);
  noStroke();
}

void draw() {
  fill(204, 120);
  rect(0, 0, width, height);
  fill(0);
  // If cursor is over the text, change the position
  if ((mouseX >= x) && (mouseX <= x+55) &&
      (mouseY >= y-24) && (mouseY <= y)) {
    x += random(-2, 2);
    y += random(-2, 2);
  }
  text("tickle", x, y);
}
