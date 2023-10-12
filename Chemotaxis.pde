 //declare bacteria variables here
 int numBacts = 20;
 Bacteria[] bactArray = new Bacteria[numBacts];
 void setup()   
 {     
   size(500, 500);
   //initialize bacteria variables here
   for(int i = 0; i < numBacts; i++){
     bactArray[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria   
   background(0);
   for(int a = 0; a < numBacts; a++){
     bactArray[a].move();
     bactArray[a].show();
   }
 }  
 class Bacteria    
 {     
   int x, y;
   int bactColor;
   //lots of java!   
   Bacteria (){
     x = 250;
     y = 250;
     bactColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
   }
   
   void move(){
     //biased random walking
     
     //if bacteria is above the mouse
     if(y < mouseY){
       y -= (int)(Math.random() * 4) - 2;
     }
     //if bacteria is below mouse
     if(y > mouseY){
       y += (int)(Math.random() * 4) - 2;
     }
     //if bacteria is to the left of mouse
     if(x < mouseX){
       x += (int)(Math.random() * 4) - 1; //-2, -1, 0, 1
     }
     //if bacteria is to the right of mouse
     if(x > mouseX){
       x -= (int)(Math.random() * 4) - 1; 
     }
     //add extra random movements
     x += (int)(Math.random() * 3) - 1;
     y += (int)(Math.random() * 3) - 1;
       
     
   }
   
   void show(){
     fill(bactColor);
     ellipse(x, y, 20, 20);
   }
 }    
