// Simple button that can be clicked by mouse to have things happen. 
// In this exemplar the button changes color when clicked.
//
// Author: Dr. Pineda
// Date: December 3, 2016


// Coordinates and dimensions of button
int x;
int y;
int w = 100;
int h = 50;

boolean buttonPressed = false;

void setup() {
  size(400,200);
  
  // Calculate the coordinates of button (it will be centered)
  x = width/2; 
  y = height/2;
}

void draw() {
  background(255,255,255);
  if (buttonPressed) { 
    fill(255,255,255);
  } else {
    fill(0,0,0);
  }
  rectMode(CENTER);
  textAlign(LEFT);
  rect(x, y, w, h);
}

void mouseClicked() {
  if (mouseX >= x-w && mouseX <= x+w && mouseY >= y-h && mouseY <= y+h) {
    if (buttonPressed) buttonPressed = false;
    else buttonPressed = true;
  } 
}