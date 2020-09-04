float xSize = 1000, ySize = 1000;
float xBall = 128, yBall = 64; 
float xSpeed = 4.1, ySpeed = 4.1;
float boundary = 1;


void setup(){
  size(1024, 1024);
  background(random(255), random(255), random(255));
  rectMode(CENTER);
}

void draw(){
  clear();
  
//Box
  noFill();
  stroke(random(255), random(255), random(255));
  rect(512, 512, xSize, ySize);
  xSize *= boundary;
  ySize *= boundary;
  boundary *= 0.99999;


  if(xSize <= 0){xSize = 0;}
  if(ySize <= 0){ySize = 0;}

//Ball
  fill(random(random(255)), random(random(255)), random(random(255)));
  circle(xBall, yBall, 24);
  xBall += xSpeed;
  yBall += ySpeed;


//Collision
  
   if(xBall > width/2 + xSize/2){
  xSpeed *= -1; 
  }
  
  if(yBall > width/2 + xSize/2){
  ySpeed *= -1;
  }
  
  if(xBall < width/2 - xSize/2){
  xSpeed *= -1; 
  }
  
  if(yBall < width/2 - xSize/2){
  ySpeed *= -1;
  }
  
  if(xBall > width/2+xSize/2){
  xBall = width/2+xSize/2;}
  
  if(xBall < width/2-xSize/2){
  xBall = width/2-xSize/2;}
  
  if(yBall > height/2+ySize/2){
  yBall= height/2+ySize/2;}
  
  if(yBall < height/2-ySize/2){
  yBall= height/2-ySize/2;}
  
}





  
  
