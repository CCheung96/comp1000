void setup() { 
  size(400, 400); 
  noStroke(); // Removes the outlines for a cleaner illusion 
} 

void draw() { 
  background(255); // White background 
  // --- 1. DRAW THE BLACK "PAC-MEN" --- 
  fill(0); 
  circle(100, 100, 80); // Top Left 
  circle(300, 100, 80); // Top Right 
  circle(200, 300, 80); // Bottom 
  // --- 2. THE "BITES" (White triangles) --- 
  // These triangles hide part of the circles to create the "Pac-Man" look 
  fill(255); 
  triangle(100, 100, 150, 100, 100, 150); // Bite for Top Left
  triangle(300, 100, 250, 100, 300, 150); // Bite for Top Right 
  triangle(200, 300, 170, 250, 230, 250); // Bite for Bottom 
  // --- 3. THE SKELETON TRIANGLE (The "V" shapes) --- 
  fill(0); 
  // Large triangle pointing UP 
  triangle(200, 70, 100, 250, 300, 250); 
  fill(255); 
  // Slightly smaller white triangle to leave only the "V" corners visible 
  triangle(200, 90, 120, 240, 280, 240); 
}
