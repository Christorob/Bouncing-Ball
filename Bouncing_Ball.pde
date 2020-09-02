int xSize = 10, ySize = 10;
int rectx = 1000, recty = 24;

void setup(){
  size(1024, 1024);
  background(0, 0, 0);
}

void draw(){
  clear();
    noFill();
    stroke(255, 255, 255);
  rect(rectx, recty, xSize, ySize);
  xSize = xSize - 5;
  ySize = ySize - 5;
}
