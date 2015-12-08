
// //test1
// int x0 = 50;
// int x1 = 61;
// int x2 = 83;
// int x3 = 69;
// int x4 = 71;
// int x5 = 50;
// int x6 = 29;
// int x7 = 31;
// int x8 = 17;
// int x9 = 39;
// fill(0);
// rect(0, 0, x0, 8);
// rect(0, 10, x1, 8);
// rect(0, 20, x2, 8);
// rect(0, 30, x3, 8);
// rect(0, 40, x4, 8);
// rect(0, 50, x5, 8);
// rect(0, 60, x6, 8);
// rect(0, 70, x7, 8);
// rect(0, 80, x8, 8);
// rect(0, 90, x9, 8);
// 
// //test2
// int[] x = {
//   50, 61, 83, 69, 71, 50, 29, 31, 17, 39
// };
// 
// fill(0);
// // Read one array element each time through the for loop
// for (int i = 0; i < x.length; i++) {
//   rect(0, i*10, x[i], 8);
// }

// //test3?
// int[] data; // Declare
// 
// void setup() {
//   size(100, 100);
//   data = new int[5]; // Create
//   data[0] = 19; // Assign
//   data[1] = 40;
//   data[2] = 75;
//   data[3] = 76;
//   data[4] = 90;
// }
// 
// int[] data = new int[5]; // Declare, create
// 
// void setup() {
//   size(100, 100);
//   data[0] = 19; // Assign
//   data[1] = 40;
//   data[2] = 75;
//   data[3] = 76;
//   data[4] = 90;
// }
// 
// int[] data = { 19, 40, 75, 76, 90 }; // Declare, create, assign
// 
// void setup() {
//   size(100, 100);
// }

// //test4
// int[] data = { 19, 40, 75, 76, 90 };
// 
// line(data[0], 0, data[0], 100);
// line(data[1], 0, data[1], 100);
// line(data[2], 0, data[2], 100);
// line(data[3], 0, data[3], 100);
// line(data[4], 0, data[4], 100);

// //test5
// int[] data = { 19, 40, 75, 76, 90 };
// 
// for (int i = 0; i < data.length; i++) {
//   line(data[i], 0, data[i], 100);
// }

// //test6
// float[] sineWave;
// 
// void setup() {
//   size(100, 100);
//   sineWave = new float[width];
//   for (int i = 0; i < sineWave.length; i++) {
//     // Fill array with values from sin()
//     float r = map(i, 0, width, 0, TWO_PI);
//     sineWave[i] = abs(sin(r));
//   }
//   println("width=%d\n",width);
// }
// 
// void draw() {
//   for (int i = 0; i < sineWave.length; i++) {
//     // Set stroke values to numbers read from array
//     stroke(sineWave[i] * 255);
//     line(i, 0, i, height);
//   }
// }

// //test7
// int[] y;
// 
// void setup() {
//   size(100, 100);
//   y = new int[width];
// }
// 
// void draw() {
//   background(204); // Read the array from the end to the
//   // beginning to avoid overwriting the data
//   for (int i = y.length-1; i > 0; i--) {
//     y[i] = y[i-1];
//   }
//   // Add new values to the beginning
//   y[0] = mouseY;
//   // Display each pair of values as a line
//   for (int i = 1; i < y.length; i++) {
//     line(i, y[i], i-1, y[i-1]);
//   }
// }

// //test8
// int num = 50;
// int[] x = new int[num];
// int[] y = new int[num];
// 
// void setup() {
//   size(100, 100);
//   noStroke();
//   fill(255, 102);
// }
// 
// void draw() {
//   background(0);
//   // Shift the values to the right
//   for (int i = num-1; i > 0; i--) {
//     x[i] = x[i-1];
//     y[i] = y[i-1];
//   }
//   // Add the new values to the beginning of the array
//   x[0] = mouseX;
//   y[0] = mouseY;
//   // Draw the circles
//   for (int i = 0; i < num; i++) {
//     ellipse(x[i], y[i], i/2.0, i/2.0);
//   }
// }

// //test9
// int num = 50;
// int[] x = new int[num];
// int[] y = new int[num];
// int indexPosition = 0;
// 
// void setup() {
//   size(100, 100);
//   noStroke();
//   fill(255, 102);
// }
// 
// void draw() {
//   background(0);
//   x[indexPosition] = mouseX;
//   y[indexPosition] = mouseY;
//   // Cycle between 0 and the number of elements
//   indexPosition = (indexPosition + 1) % num;
//   for (int i = 0; i < num; i++) {
//     // Set the array position to read
//     int pos = (indexPosition + i) % num;
//     float radius = (num-i) / 2.0;
//     ellipse(x[pos], y[pos], radius, radius);
//   }
// }

// //test10
// String[] trees = { "ash", "oak" };
// 
// append(trees, "maple"); // INCORRECT! Does not change the array
// printArray(trees); // Prints [0] "ash", [1] "oak"
// println();
// trees = append(trees, "maple"); // Add "maple" to the end
// printArray(trees); // Prints [0] "ash", [1] "oak", [2] "maple"
// println();
// // Add "beech" to the end of the trees array, and creates a new
// // array to store the change
// 
// String[] moretrees = append(trees, "beech");
// 
// // Prints [0] "ash", [1] "oak", [2] "maple", [3] "beech"
// printArray(moretrees);

// //test11
// String[] trees = { "lychee", "coconut", "fig" };
// 
// trees = shorten(trees); // Remove the last element from the array
// printArray(trees); // Prints [0] "lychee", [1] "coconut"
// println();
// trees = shorten(trees); // Remove the last element from the array
// printArray(trees); // Prints [0] "lychee"

// //test12
// int[] x = new int[100]; // Array to store x-coordinates
// int count = 0; // Positions stored in array
// void setup() {
//   size(100, 100);
// }
// void draw() {
//   x[count] = mouseX; // Assign new x-coordinate to the array
//   count++; // Increment the counter
//   if (count == x.length) { // If the x array is full,
//     x = expand(x); // double the size of x
//     println(x.length); // Write the new size to the console
//   }
// }

// //test13
// String[] north = { "OH", "IN", "MI" };
// String[] south = { "GA", "FL", "NC" };
// 
// arrayCopy(north, south); // Copy from north array to south array
// printArray(south); // Prints [0] "OH", [1] "IN", [3] "MI"
// println();
// 
// String[] east = { "MA", "NY", "RI" };
// String[] west = new String[east.length]; // Create a new array
// 
// arrayCopy(east, west); // Copy from east array to west array
// printArray(west); // Prints [0] "MA", [1] "NY", [2] "RI"

// //tst14
// float[] data = { 19.0, 40.0, 75.0, 76.0, 90.0 };
// 
// void setup() {
//   halve(data);
//   println(data[0]); // Prints "9.5"
//   println(data[1]); // Prints "20.0"
//   println(data[2]); // Prints "37.5"
//   println(data[3]); // Prints "38.0"
//   println(data[4]); // Prints "45.0"
// }
// void halve(float[] d) {
//   for (int i = 0; i < d.length; i++) { // For each array element,
//     d[i] = d[i] / 2.0; // divide the value by 2
//   }
// }

// //test15
// float[] data = { 19.0, 40.0, 75.0, 76.0, 90.0 };
// float[] halfData;
// void setup() {
//   halfData = halve(data); // Run the halve() function
//   println(data[0], halfData[0]); // Prints "19.0, 9.5"
//   println(data[1], halfData[1]); // Prints "40.0, 20.0"
//   println(data[2], halfData[2]); // Prints "75.0, 37.5"
//   println(data[3], halfData[3]); // Prints "76.0, 38.0"
//   println(data[4], halfData[4]); // Prints "90.0, 45.0"
// }
// 
// float[] halve(float[] d) {
//   float[] numbers = new float[d.length]; // Create a new array
//   arrayCopy(d, numbers);
//   for (int i = 0; i < numbers.length; i++) { // For each element,
//     numbers[i] = numbers[i] / 2.0; // divide the value by 2
//   }
//   return numbers; // Return the new array
// }

// //test16
// Ring[] rings; // Declare the array
// int numRings = 50;
// int currentRing = 0;
// void setup() {
//   size(100, 100);
//   rings = new Ring[numRings]; // Create the array
//   for (int i = 0; i < rings.length; i++) {
//     rings[i] = new Ring(); // Create each object
//   }
// }
// void draw() {
//   background(0);
//   for (int i = 0; i < rings.length; i++) {
//     rings[i].grow();
//     rings[i].display();
//   }
// }
// // Click to create a new Ring
// void mousePressed() {
//   rings[currentRing].start(mouseX, mouseY);
//   currentRing++;
//   if (currentRing >= numRings) {
//     currentRing = 0;
//   }
// }
// class Ring {
//   float x, y;          // X-coordinate, y-coordinate
//   float diameter;      // Diameter of the ring
//   boolean on = false;  // Turns the display on and off
// 
//   void start(float xpos, float ypos) {
//     x = xpos;
//     y = ypos;
// 
//     diameter = 1;
//     on = true;
//   }
// 
//   void grow() {
//     if (on == true) {
//       diameter += 0.5;
//       if (diameter > 400) {
//         on = false;
//         diameter = 1;
//       }
//     }
//   }
// 
//   void display() {
//     if (on == true) {
//       noFill();
//       strokeWeight(4);
//       stroke(204, 153);
//       ellipse(x, y, diameter, diameter);
//     }
//   }
// }

//test17
Spot[] spots; // Declare array
void setup() {
  size(700, 100);
  int numSpots = 70; // Number of objects
  int dia = width/numSpots; // Calculate diameter
  spots = new Spot[numSpots]; // Create array
  for (int i = 0; i < spots.length; i++) {
    float x = dia/2 + i*dia;
    float rate = random(0.1, 2.0);
    // Create each object
    spots[i] = new Spot(x, 50, dia, rate);
  }
  noStroke();
}
void draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255);
  for (int i=0; i < spots.length; i++) {
    spots[i].move(); // Move each object
    spots[i].display(); // Display each object
  }
}
class Spot {
  float x, y;         // X-coordinate, y-coordinate
  float diameter;     // Diameter of the circle
  float speed;        // Distance moved each frame
  int direction = 1;  // Direction of motion (1 is down, -1 is up)

  // Constructor
  Spot(float xpos, float ypos, float dia, float sp) {
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }

  void move() {
    y += (speed * direction);
    if ((y > (height - diameter/2)) || (y < diameter/2)) {
      direction *= -1;
    }
  }

  void display() {
    ellipse(x, y, diameter, diameter);
  }
}

////test18
//int[][] x = { {50, 0}, {61,204}, {83,51}, {69,102},
//              {71, 0}, {50,153}, {29, 0}, {31,51},
//              {17,102}, {39,204} };
//
//void setup() {
//  size(100, 100);
//}
//void draw() {
//  for (int i = 0; i < x.length; i++) {
//    fill(x[i][1]);
//    rect(0, i*10, x[i][0], 8);
//  }
//}
