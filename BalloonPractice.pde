//******* BalloonPractice *******//
Balloon bob, sue;
void setup() {
  size(300, 300);
  bob = new Balloon(25, 225);
  sue = new Balloon(225, 150);
}
void draw() {
  System.out.println(bob.myX);
  System.out.println(sue.myX);
  
  //PREDICTION
  //  >> 25
  //  >> 225
  
  // I was right!
  
}
class Balloon {
  int myX, myY, mySize;
  Balloon(int x_, int y_)
  {
    mySize = 0;
    myX = x_;
    myY = y_;
  }
  void inflate() {
    mySize += 1;
  }
  void show() {
    fill(255, 0, 0);
    ellipse(myX, myY, mySize, mySize);
  }
}
