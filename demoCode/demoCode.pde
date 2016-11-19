// demoCode.pde
// Keeping track of battle points for Avengers teams
//
// Author: Dr. Pineda (November 18, 2016)

//
// Declare global variables
//-------|---------|---------|---------|---------|---------|---------|---------|

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

// Variable for keeping track of total points for all teams
int totalPoints;

// Variable for the font
PFont f;

//
// Set up canvas and assign variables
//
void setup() {
  size(700, 500);                      // Size of canvas is 700px x 500px
  background(255, 255, 255);           // Background color is white
  f = createFont("Georgia", 40, true); // Create Georgia ft using ft size 40pts
  
  // Assign team names
  name1 = "Team Romanoff";
  name2 = "Team Stark";
  name3 = "Team Ultron";

  // Define number of pts each won battle gives a team
  pointsPerWin = 2;
  
  // Assign the number of won battles for each team
  nWinsTeam1 = 5;
  nWinsTeam2 = 2;
  nWinsTeam3 = 2;

  // Calculate total points for each team
  pointsTeam1 = nWinsTeam1 * pointsPerWin;
  pointsTeam2 = nWinsTeam2 * pointsPerWin;
  pointsTeam3 = nWinsTeam3 * pointsPerWin;

  // Calculate total points for all teams
  totalPoints = pointsTeam1 + pointsTeam2 + pointsTeam3;
}

//
// Generate graphics in the draw function. Note that this function loops 60 
// times/second (default frequency) and should not contain any code that would 
// not make sense to loop 
//
void draw() {
  background(255,255,255); // Redraw white background to keep things crisp
  line(300,0,300,500);   // Vertical line to align text around
  
  //
  // Display team names
  //
  textFont(f, 40); // Define font and font size
  fill(0,0,0); // Black font
  
  // Display team 1 left aligned
  textAlign(LEFT);
  text(name1, 300, 50);
  
  // Display team 2 right aligned
  textAlign(RIGHT);
  text(name2, 300, 100);
  
  // Display team 3 center aligned
  textAlign(CENTER);
  text(name3, 300, 150);
  
  // Display points
  text(pointsTeam1, 650, 50);
  text(pointsTeam2, 650, 100);    
  text(pointsTeam3, 650, 150);
  
  // Display total points
  textAlign(LEFT);
  text("Total points", 300, 200);
  textAlign(RIGHT);
  text(totalPoints, 650, 200);
}