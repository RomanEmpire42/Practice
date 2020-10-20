 void setup()
  {
    size(500, 500);
    noLoop();
  }
  double total;
  void draw()
  {
      background(50, 150, 250);
      fill(0, 0, 0);
      total = 0;
      int thisX = 1;
      int thisY = 1;
      for(int i = 0; i < 9; i++){
        if(thisX >= 4){
          thisY++;
          thisX = 1;
        }
        Coin aCoin = new Coin(100 * thisX, 100 * thisY);
        aCoin.show();
        thisX++;
      }
      
      text("Heads vs Tails (percentage): " + (total / 9) * 100, 220, 450);
  }
  void mousePressed()
  {
      redraw();
  }
  class Coin
  {
      //member variable declarations here
      boolean heads;
      int myX, myY;
      
      Coin(int x_, int y_) //constructor
      {
          myX = x_;
          myY = y_;
          flip();
      }
      void flip()
      {
        if((int)(Math.random() * 2) == 1){
          heads = true;
        } else {
          heads = false;
        }

        
      }
      void show()
      {
        if(heads){
          fill(255, 255, 255);
          total++;
        } else{
          fill(0, 0, 0);
        }
        ellipse(myX, myY, 50, 50);
      }
  }
