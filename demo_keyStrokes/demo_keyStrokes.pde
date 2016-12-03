// Allows user to enter a text string (name in this case)
//
// Author: Dr. Pineda
// Date: December 3, 2016

String name="";
boolean detectKeyStrokes = true;

void setup() {
  size(400, 200);
  background (0);
} 

void draw() {
    background (252);
    fill(0);
    if (detectKeyStrokes) {
      text("Name: "+name, 10, 100);
    } else {
      text("Thanks "+name, 10, 100);
    }
} 

void keyPressed() {
  if (detectKeyStrokes) {
    if (key!=CODED) {
      if (key==BACKSPACE) {
        if (name.length()>0) {
          name=name.substring(0, name.length()-1);
        } 
      } else if (key==RETURN || key==ENTER) {
        detectKeyStrokes = false; 
      } 
      else {
        name += key;
      } 
    }
  }
}