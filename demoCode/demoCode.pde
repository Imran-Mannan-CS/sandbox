// demoCode.pde
// Keeping track of battle points for Avengers teams
//
// Author: Dr. Pineda (November 18, 2016)

//
// Declare global variables
//

// Variables for team names
String name1;
String name2;
String name3;

// Variables for keeping track of number of wins per team
int nWinsTeam1;
int nWinsTeam2;
int nWinsTeam3;

// Variables for keeping track of number of points per team
int pointsTeam1;
int pointsTeam2;
int pointsTeam3;

// Variable defining number of points a team gets per winning battle
int pointsPerWin;
PFont f;

// Set up canvas
void setup() {
  size(700, 500); // Size of canvas
  background(255, 255, 255); // Background color as rgb values
  f = createFont("Georgia", 40, true);
  nWinsTeam1 = 5;
  nWinsTeam2 = 2;
  nWinsTeam3 = 2;
  name1 = "Team Romanoff";
  name2 = "Team Stark";
  name3 = "Team Ultron";
  pointsPerWin = 2;
}

void draw() {
  background(255,255,255);
  
  // Calculate total points
  pointsTeam1 = nWinsTeam1 * pointsPerWin;
  pointsTeam2 = nWinsTeam2 * pointsPerWin;
  
  // Draw vertical line across canvass
  line(300,0,300,500);
  
  //
  // Display team names
  //
  textFont(f, 40); // Define font and font size
  fill(0,0,0); // Black font
  
  // Display Team 1 left aligned
  textAlign(LEFT);
  text(name1, 300, 50);
  
  // Display Team 2 right aligned
  textAlign(RIGHT);
  text(name2, 300, 100);
  
  // Display team "Dr. P" center aligned
  textAlign(CENTER);
  text(name3, 300, 150);
  
  // Display points
  text(pointsTeam1, 650, 50);
  text(pointsTeam2, 650, 100);    
  text(pointsTeam3, 650, 150);
  
  // Display total points
  textAlign(LEFT);
  text("Total points", 300, 200);
  int totalPoints = pointsTeam1 + pointsTeam2 + pointsTeam3;
  text(totalPoints, 300, 200);
}