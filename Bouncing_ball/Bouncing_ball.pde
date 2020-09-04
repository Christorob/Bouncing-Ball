float xSize = 1000, ySize = 1000;
float xBall = 24, yBall = 24; 
float xSpeed = 4, ySpeed = 4;
float boundary = 2;


void setup(){
  size(1024, 1024);
  background(0, 0, 0);
  rectMode(CENTER);
}

void draw(){
  clear();
  
//Box
  noFill();
  stroke(255, 255, 255);
  rect(512, 512, xSize, ySize);
  xSize = xSize - boundary;
  ySize = ySize - boundary;
  boundary = boundary + 0.002;


//Ball
  fill(255);
  circle(xBall, yBall, 24);
  xBall = xBall + xSpeed;
  yBall = yBall + ySpeed;


//Collision

if(xBall-12 > (width - boundary/2) || xBall < boundary/2){
  xSpeed = xSpeed * -1;
  }
  
  if(yBall-12 > (width - boundary/2) || yBall < boundary/2){
  ySpeed = ySpeed * -1;
  }
  
}
  
  
