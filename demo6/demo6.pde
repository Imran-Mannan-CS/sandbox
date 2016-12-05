// Simple animation demo
//
// Author: Dr. Pineda
// Date December 5, 2016

int x, y; // Coordinates of object
int s = 25; // Side length of square
int direction; // Positive direction = going down; negative direction = going up

void setup() {
  size(400,200);
  
  direction = 1;  // Start by going up
  
  // Calculate the initial coordinates (centered)
  x = width/2; 
  y = height/2;
}

void draw() {
  background(255,255,255);
  rectMode(CENTER);
  rect(x, y, s, s);
  y = y + direction;
  
  // Determine if it is time to turn around
  if (y>height-s/2) {
    direction = -1;
  } else if (y<0+s/2) {
    direction = 1;
  }
  
}