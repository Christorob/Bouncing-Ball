float xSize = 1000, ySize = 1000;
float xBall = 64, yBall = 64; 
float xSpeed = 4, ySpeed = 4;
float boundary = 1;


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
  xSize *= boundary;
  ySize *= boundary;
  boundary *= 0.9999;


  if(xSize <= 0){xSize = 0;}
  if(ySize <= 0){ySize = 0;}

//Ball
  fill(random(255), random(255), random(255));
  circle(xBall, yBall, 24);
  xBall += xSpeed;
  yBall += ySpeed;


//Collision

if(xBall > (width/2 + xSize/2)  || xBall <  0){
  xSpeed *= -1;
  }
  
  if(yBall > (height/2 + ySize/2) || yBall < 0){
  ySpeed *= -1;
  }
  
}
  
  
