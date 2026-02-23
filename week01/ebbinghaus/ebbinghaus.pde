void setup(){
  size(1200, 600);
  background(255);
  // Centre Circle
  fill(204, 102, 0);
  circle(300, 300, 75);
  // Surrounding Circles
  fill(153);
  circle(100, 300, 180);
  circle(500, 300, 180);
  circle(200, 300 - 200 * sin(PI/3), 180);
  circle(400, 300 - 200 * sin(PI/3), 180);
  circle(200, 300 + 200 * sin(PI/3), 180);
  circle(400, 300 + 200 * sin(PI/3), 180);
  
  // Centre Circle
  fill(204, 102, 0);
  circle(900, 300, 75);
  // Circles
  fill(153);
  circle(830, 300, 40);  //9 o'clock
  circle(900, 230, 40);  //12 o'clock
  circle(970, 300, 40);  //3 o'clock
  circle(900, 370, 40);  //9 o'clock
  circle(900 - 70*cos(PI/4), 300 - 70 *cos(PI/4),40); 
    circle(900 - 70*cos(PI/4), 300 + 70 *cos(PI/4),40); 
  circle(900 + 70*cos(PI/4), 300 - 70 *cos(PI/4),40); 

  circle(900 + 70*cos(PI/4), 300 + 70 *cos(PI/4),40); 

}
