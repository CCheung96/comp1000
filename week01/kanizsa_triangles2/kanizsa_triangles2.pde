void setup() { 
  size(400, 360);   

  background(255); // White background 
  
  // 1. THE CIRCLES
  fill(0); 
  circle(100, 100, 80); // Top Left 
  circle(300, 100, 80); // Top Right 
  circle(200, 300, 80); // Bottom 
  // 2. THE TRIANGLE OUTLINE
  noFill();
  stroke(0);
  triangle(200, 50, 100, 250, 300, 250); 
  // 3. THE NEGATIVE-SPACE TRIANGLE
  fill(255); 
  noStroke();   // Removes the outline
  triangle(100, 100, 300, 100, 200, 300);
}

//void draw(){
//  fill(mouseX);
//  triangle(100, 100, 300, 100, 200, 300);
//}
