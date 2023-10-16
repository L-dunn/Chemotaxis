 //declare bacteria variables here
 int numBacts = 20;
 int speedCoeff = 50;
 
 Bacteria[] bactArray = new Bacteria[numBacts];
 void setup()   
 {     
   background(0);
   size(500, 500);
   //initialize bacteria variables here
   for(int i = 0; i < numBacts; i++){
     bactArray[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria   
   //background(0);
   fill(0, 15);
   rect(0, 0, 500, 500);
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
     bactColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256), 100);
   }
   
   void move(){
     int speed = (int)(dist(this.x, this.y, mouseX, mouseY)) / speedCoeff;
     
     //biased random walking toward mouse ---------------------------------------
     
     //if bacteria is above the mouse
     if(mousePressed == false){
       if(y < mouseY){
         y -= speed * ((int)(Math.random() * 4) - 2);
       }
       //if bacteria is below mouse
       if(y > mouseY){
         y += speed * ((int)(Math.random() * 4) - 2);
       }
       //if bacteria is to the left of mouse
       if(x < mouseX){
         x += speed * ((int)(Math.random() * 4) - 1); //-2, -1, 0, 1
       }
       //if bacteria is to the right of mouse
       if(x > mouseX){
         x -= speed * ((int)(Math.random() * 4) - 1); 
       }
     } else {
       //move away from mouse when mouse in pressed---------------------------------------
       
       //if bacteria is above mouse
       if(y < mouseY){
         y += speed * ((int)(Math.random() * 4) - 2);
       }
       //if bacteria is below mouse
       if(y > mouseY){
         y -= speed * ((int)(Math.random() * 4) - 2);
       }
       //if bacteria is to the left of mouse
       if(x < mouseX){
         x -= speed * ((int)(Math.random() * 4) - 1); //-2, -1, 0, 1
       }
       //if bacteria is to the right of mouse
       if(x > mouseX){
         x += speed * ((int)(Math.random() * 4) - 1); 
       }
     }
     
     //add extra random movements
     x += (int)(Math.random() * 3) - 1;
     y += (int)(Math.random() * 3) - 1;
   }
   
   void show(){
     noStroke();
     fill(bactColor);
     ellipse(x, y, 20, 20);
   }
 }    
