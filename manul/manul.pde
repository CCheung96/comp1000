/* 
  A Cute Manul
  Image Source : https://www.youtube.com/shorts/4sYjgkc6jxk
*/


color beige = color(180, 175, 160);  // Pallas cat grey-beige
color cream = color(250, 245, 225);  // Creamy White
// Position of the manul
float xPos;
float yPos;
float ground;
// Some dimensions for the manul
float manulWidth = 360;
// Velocity variables
float xSpeed = 1;
int xDir = 1;
float jumpV = 0;
float gravity = 0.5;

void setup() {
  size(800, 600);
  xPos = width/2;
  yPos = height * 2/3;
  ground = yPos;
}

void draw() {
  // Soft, Snowy Background
  background(220, 230, 240); 
  fill(255);
  rect(0, height * 3/5, width, height * 2/5);
  //for (int i = 0; i < 100; i++){ 
  //  circle(random(width), random(height), 5);
  //}
  
  /* Drawing the Manul */
  // Base Layer
  noStroke();
  fill(cream); 
  arc(xPos - 66, yPos - 240, 100, 140, PI-PI/2, PI, CHORD);
  arc(xPos + 66, yPos - 240, 100, 140, 0, PI/2, CHORD);
  fill(beige); 
  ellipse(xPos, yPos, manulWidth, manulWidth);   // THE BODY IS ROUND!
  ellipse(xPos, yPos - 150, 250, 200);  // Head
  ellipse(xPos - 20, yPos + 140, 240, 80); // Tail
  fill(180, 175, 160); // Pallas cat grey-beige
  triangle(xPos - 115, yPos - 240, xPos - 100, yPos - 205, xPos - 75, yPos - 230);  // Left Ear
  triangle(xPos + 115, yPos - 240, xPos + 100, yPos - 205, xPos + 75, yPos - 230);  // Right Ear
  
  // 2nd Layer
  // Head Spots
  fill(74, 52, 19);
  ellipse(xPos, yPos - 230, 20, 5);
  ellipse(xPos - 20, yPos - 240, 20, 5);
  ellipse(xPos + 20, yPos - 240, 20, 5);
  //arc(xPos - 20, yPos + 120, 200, 10, 0, PI);
  
  // White Mouth Area
  fill(250, 245, 225);
  ellipse(xPos, yPos - 120, 170, 100); 
  
  // Nose
  //stroke(0);
  fill(180, 175, 160); // Pallas cat grey-beige
  triangle(xPos, yPos - 186, xPos - 28,yPos - 148, xPos + 28, yPos - 148);
  fill(219, 145, 177);
  arc(xPos, yPos - 148, 24, 15, PI, TWO_PI);
  triangle(xPos - 7, yPos - 148, xPos + 7, yPos - 148, xPos, yPos - 143);
  stroke(255);
  
  // Whiskers (Left)
  line(xPos - 50, yPos - 145, xPos - 150, yPos - 140);
  line(xPos - 50, yPos - 135, xPos - 150, yPos - 120);
  line(xPos - 50, yPos - 125, xPos - 150, yPos - 100);
  // Whiskers (Right)
  line(xPos + 50, yPos - 145, xPos + 150, yPos - 140);
  line(xPos + 50, yPos - 135, xPos + 150, yPos - 120);
  line(xPos + 50, yPos - 125, xPos + 150, yPos - 100);
  
  // Mouth
  noFill();
  stroke(0);
  arc(xPos - 12, yPos - 135, 24, 15, 0 , PI - PI/4);
  arc(xPos + 12, yPos - 135, 24, 15, 0 + PI/4, PI);
  
  // Eyes
  //stroke(74, 52, 19);  // Dark Brown Markings
  //line(219, 
  fill(215, 235, 160); 
  stroke(0);
  strokeWeight(3);
  ellipse(xPos - 30, yPos - 180, 30, 27); // Irises
  ellipse(xPos + 30, yPos - 180, 30, 27);
  circle(xPos - 30, yPos - 180, 3); // Pupils
  circle(xPos + 30, yPos - 180, 3);
  //stroke(255);
  //fill(255);
  //circle(300 - 31, 217, 1);
  
  stroke(74, 52, 19);  // Dark Brown Markings
  noFill();
  arc(xPos - 35, yPos - 190, 30, 27, PI, TWO_PI - PI/3); // Left Brow
  arc(xPos + 35, yPos - 190, 30, 27, PI + PI/3, TWO_PI); // Right Brow
  
  // Arms and Paws
  arc(xPos - 200, yPos + 140, 400, 500, TWO_PI - PI/4, TWO_PI); // Left
  arc(xPos + 200, yPos + 140, 400, 500, PI, PI + PI/4);         // Right
  noStroke();
  fill(245, 221, 186);  // Light Orange Fur
  arc(xPos - 30, yPos + 140, 60, 40, PI - QUARTER_PI, TWO_PI + QUARTER_PI, CHORD);
  arc(xPos + 30, yPos + 140, 60, 40, PI - QUARTER_PI, TWO_PI + QUARTER_PI, CHORD);
  
  // To move the manul
  xPos = xPos + xSpeed * xDir;
  yPos = yPos + jumpV;
  //xPos = (xPos + xSpeed) % width; // manul portals to the left

  /* Velocity Modifiers */
  xSpeed = 1 + 5 * abs(xPos - width/2) / width;
  //if (xPos > width/4 && xPos < width * 3/4){
  //  xSpeed  = 5;
  //} else {
  //  xSpeed = 1;
  //}
  
  if (yPos >= ground) {
    // Stop moving when landing
    yPos = ground;
    jumpV = 0; 
  } else {
    // Gravity changes jump velocity
    jumpV += gravity;
  }
  
  //// Change direction when manul reaches egde of screen
  //if (xPos < 0 || xPos > width){
  //  xDir = -xDir;
  //}
  
  // Manul bounces off edge of screen
  if (xPos < manulWidth/2 || xPos > width - manulWidth/2){
    xDir = -xDir;
  }
}

void keyPressed(){
  if (yPos == ground) {
    jumpV = -7; 
  }
}
