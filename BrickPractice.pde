//********* Brick Practice ***********//
void setup() {
  size(380,385);
  noLoop();
}
void draw() {
  int row = 0;
  for(int y = 0; y < 400; y += 12)
  {
    row++;
    for(int x = 0; x < 400; x += 52)
    {
      if(row % 2 == 0)
      {
        x -= 26;
      }
      Brick bob = new Brick(x,y);
      if(row % 2 == 0)
      {
        x += 26;
      }
      bob.show();
    }
  }
}
class Brick {
  int myX, myY;
  Brick(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void show()
  {
    noStroke();
    fill(255,0,0);
    rect(myX,myY,50,10);
  }
}
