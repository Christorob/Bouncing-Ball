float xSize = 1000, ySize = 1000;
float xCirc = 24, yCirc = 24; 
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
  xSize = xSize * 0.999;
  ySize = ySize * 0.999;

//Ball
  circle(xCirc, yCirc, 24);
 
}
