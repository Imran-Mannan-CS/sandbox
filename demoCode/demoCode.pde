// demoCode.pde
// Keeps track of Team Romanoff and Team Stark battle point
// Author: Dr. P (November 19, 2016)

String name1;
String name2;
int nPointsTeam1;
int nPointsTeam2;

PFont f;

// Set up canvas
void setup() {
  size(700, 500); // Size of canvas
  background(255, 255, 255); // Background color as rgb values
  f = createFont("Georgia", 40, true);
}

void draw() {
  background(255,255,255);
  name1 = "Ms. Romanoff";
  name2 = "Mr. Stark";
  nPointsTeam1 = 3;
  nPointsTeam2 = 5;
  textFont(f, 40);
  fill(0,0,0);
  text(name1, 0, 50);
  text(name2, 0, 100);
  int total;
  total = nPointsTeam1 * nPointsTeam2;
  text(total, 0, 150);
}