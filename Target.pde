//********** Target Practice ************//
Target one, two;
void setup() {
  noLoop();
}
void draw() {
  background(197);
  one = ________________________________;
  two = ________________________________;
  ________________________________
  ________________________________
}
void mousePressed() {
  redraw();
}
class Target {
  int numRings, myX, myY;
  Target(int x, int y) {  //constructor initializes the 3 variables
     ________________________________
    ________________________________
    ________________________________
  }
 void show() {
   int siz = 50;
   for(int i = 0; i < numRings; i++) {
      fill( (int) (Math.random()*256), (int) (Math.random()*256), (int) (Math.random()*256) );
      ellipse(myX,myY,siz,siz);
      siz-=16;
    }
  }
}
