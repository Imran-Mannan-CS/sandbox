// demoCode.pde
// Keeping track of Team Romanoff and Team Stark battle points. Showing how to declare, assign and display strings and integers. 
//
// Author: Dr. Pineda (November 18, 2016)

String name1;
String name2;
int nWinsTeam1;
int nWinsTeam2;
int pointsTeam1;
int pointsTeam2;
int pointsPerWin;
PFont f;

// Set up canvas
void setup() {
  size(700, 500); // Size of canvas
  background(255, 255, 255); // Background color as rgb values
  f = createFont("Georgia", 40, true);
  nWinsTeam1 = 5;
  nWinsTeam2 = 2;
  name1 = "Team Romanoff";
  name2 = "Team Stark";
  pointsPerWin = 2;
}

void draw() {
  background(255,255,255);
  
  // Calculate total points
  pointsTeam1 = nWinsTeam1 * pointsPerWin;
  pointsTeam2 = nWinsTeam2 * pointsPerWin;
  
  // Draw vertical line across canvass
  line(300,0,300,500);
  
  // Display team names
  textFont(f, 40);
  fill(0,0,0);
  textAlign(LEFT);
  text(name1, 300, 50);
  textAlign(RIGHT);
  text(name2, 300, 100);
  textAlign(CENTER);
  text("Team Dr. P", 300, 150);
  
  // Display points
  text(pointsTeam1, 650, 50);
  text(pointsTeam2, 650, 100);    
}
