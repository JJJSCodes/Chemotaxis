 Bacteria [] colony;
 void setup()   
 {     
 	size(500, 500);
 frameRate(10);
 colony = new Bacteria[10];
 for(int i = 0; i <colony.length; i++) {
   colony[i] = new Bacteria(); 
  }
 }   
 void draw()   
 {    
  for(int s = 0; s < colony.length; s++){
    colony[s].move();
    colony[s].show();
  }
 }  
 class Bacteria    
 {     
 	int myX, myY, col;
   Bacteria(){
     myX = 250;
     myY = 250;
     col = color(255, 255, 255);
   }
   void move() {
     int randomX = (int)(Math.random()*6 - 3);
     int randomY = (int)(Math.random()*6 - 3);
     myX += randomX;
     myY += randomY;
   }
   void show() {
     circle(myX, myY, 50);
   }
 }    
