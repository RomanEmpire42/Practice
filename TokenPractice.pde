//******* Token Practice *******//
void setup() {
  size(300, 300);
  noLoop();
  textAlign(CENTER);
}
void draw() {
  background(192);
  int sum = 0;
  for(int x = 50; x < 250; x += 50) {
    Token theToken = new Token(x, 150);
    theToken.show();
    if(theToken.value < 6) {
      sum += theToken.value;
    }
  }
  System.out.println(sum);
}
void mousePressed() {
  redraw();
}
class Token {
  int value;
  int myX, myY;
  Token(int x_, int y_) {
    value = (int) (Math.random()*10);
    myX = x_;
    myY = y_;
  }
  void show() {
    noStroke();
    fill(255);
    ellipse(myX, myY, 50, 50);
    fill(0);
    text(“” + value, myX, myY);
  }
}
