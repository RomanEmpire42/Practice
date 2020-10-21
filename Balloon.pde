
 void setup()
  {
    size(500, 500);
  }
  double total;
  int loops = 0;
  Balloon aBalloon = new Balloon(0);
  int color1 = (int)(Math.random()*255);
  int color2 = (int)(Math.random()*255);
  int color3 = (int)(Math.random()*255);
  int color4 = (int)(Math.random()*255);
  void draw()
  {
      background(50, 150, 250);
      fill(255, 255, 255);
      aBalloon.show();
      fill(color1, color2, color3, color4);
      aBalloon.show();
      if(pressed == true){
        aBalloon.inflate();
      }
      fill(0, 0, 0);
      text("press mouse to inflate and space to reset", 250, 450);
  }
  Boolean pressed = false;
  void mousePressed()
  {
    pressed = true;
    redraw();
  }
  void keyPressed(){
    if(key == 32){
      aBalloon = new Balloon(0);
      color1 = (int)(Math.random()*255);
      color2 = (int)(Math.random()*255);
      color3 = (int)(Math.random()*255);
      color4 = (int)(Math.random()*255);
    }
  }
  void mouseReleased()
  {
    pressed = false;
  }

  class Balloon{
    int size;
    Balloon(int s_)
    {
      size = s_;
    }
    void inflate(){
      size+= 1;
    }
    void show(){
      if(size < 500){
        ellipse(250, 250, size, size);
      } else {
        text("pop!", 250, 250);
      }
    }
    
  }
