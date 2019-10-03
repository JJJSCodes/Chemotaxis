  Bacteria one;   
 void setup()   
 {     
 	size(500, 500);
 frameRate(10);
 }   
 void draw()   
 {    
 	one = new Bacteria(250,250);
  one.move();
  one.show();
 }  
 class Bacteria    
 {     
 	int myX, myY, col;
   Bacteria(int x, int y){
     myX = x;
     myY = y;
     col = color(255, 255, 255);
   }
   void move() {
     int randomX = (int)(Math.random()*30-15);
     int randomY = (int)(Math.random()*30-15);
     myX += randomX;
     myY += randomY;
   }
   void show() {
     circle(myX, myY, 50);
     System.out.println(myX);
   }
 }    
