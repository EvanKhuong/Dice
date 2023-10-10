Die steve;
  int numTotal = 0;
        void setup()
  {
    size(500,600);
      steve = new Die(220,220);
      noLoop();
  }
  void draw()
  {
 for (int y = 15; y<480; y+=60){
     for (int x = 15; x<480; x+=60){ 
   steve= new Die(x,y);
      steve.roll();
      steve.show();
     }   
 }
 fill(0);
 text("Total # of dots: " + numTotal, 200, 550);
}
  void mousePressed()
  {
     redraw();
     numTotal = 0;
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myY,myX,numDots;
      Die(int x, int y) //constructor
      {
          myY=y;
          myX=x;
      }
      void roll()
      {
         numDots=((int)(Math.random()*6)+1);
         numTotal+= numDots;
      }
      void show()
      {
     noStroke();
          fill(200,50,255);
          rect(myX,myY,50,50);
          fill(0,0,0);
          if (numDots == 1){
          ellipse(myX+25,myY+25,10,10);
      } else if (numDots == 2){
      ellipse (myX+12.5, myY+12.5,10,10);
      ellipse (myX+37.5,myY+37.5,10,10);
      }else if (numDots ==3){
      ellipse (myX+12.5, myY+12.5,10,10);
      ellipse (myX+37.5,myY+37.5,10,10);
      ellipse (myX+25,myY+25,10,10);
      }else if (numDots == 4){
      ellipse (myX+12.5, myY+12.5,10,10);
      ellipse (myX+37.5,myY+37.5,10,10);
      ellipse (myX+37.5,myY+12.5,10,10);
      ellipse (myX+12.5,myY+37.5,10,10);
      }else if (numDots == 5){
      ellipse (myX+12.5, myY+12.5,10,10);
      ellipse (myX+37.5,myY+37.5,10,10);
      ellipse (myX+37.5,myY+12.5,10,10);
      ellipse (myX+12.5,myY+37.5,10,10);
      ellipse (myX+25,myY+25,10,10);
      } else {
      ellipse (myX+12.5, myY+12.5,10,10);
      ellipse (myX+37.5,myY+37.5,10,10);
      ellipse (myX+37.5,myY+12.5,10,10);
      ellipse (myX+12.5,myY+37.5,10,10);
      ellipse (myX+37.5,myY+25,10,10);
      ellipse (myX+12.5,myY+25,10,10);
      }
  }
  }
