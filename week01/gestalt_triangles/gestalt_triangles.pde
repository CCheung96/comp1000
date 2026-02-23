void setup() { 
  size(400, 320,P2D);   

  background(255); // White background 
  
  float side = 200;
  float h = side * sin(PI/3);
  // 1. THE CIRCLES
  fill(0); 
  circle(100, 100, 80); // Top Left 
  circle(300, 100, 80); // Top Right 
  circle(200, 200*sin(PI/3)+100, 80); // Bottom 
  // 2. THE OUTLINED TRIANGLE
  fill(255); // Large triangle pointing UP 
  stroke(0);
  triangle(100, 100 + (2.0*200*sin(PI/3)/3.0), 
           200, 100 - (200*sin(PI/3)/3.0), 
           300, 100 + (2.0*200*sin(PI/3)/3.0)); 
  // 3. THE NEGATIVE-SPACE TRIANGLE
  fill(255); 
  noStroke();   // Removes the outline
  triangle(100, 100, 300, 100, 200, 200*sin(PI/3) + 100);
  
  println(200*sin(60));
  println(200*sin(PI/3));
  println(sqrt(3)/2);
  
  float d = 2.0;
  println(pow(d, 37.0));
}
