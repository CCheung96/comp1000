float xPos;
float yPos;
float inc;
void setup(){
  size(500,500); 
  xPos = width/2;
  yPos = height/2;
  inc = 0;
}
void draw(){
  background(0);
  circle(xPos + cos(PI + inc) * 200, yPos + sin(PI + inc) * 200, 100);
  inc += 0.01;
  //xPos += 0.1;
}
