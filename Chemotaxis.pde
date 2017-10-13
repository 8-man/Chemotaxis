Bacteria [] deku;  

 void setup()   
 {     
   size(400,400);
   deku = new Bacteria[10];   
  for(int i = 0; i< deku.length;i++)
  deku[i] = new Bacteria(); 
 }   

 void draw()   
 {  
   
   for( int i = 0; i< deku.length;i++)
   {
     deku[i].show();
     deku[i].move();
     
   }
 }  
  void mousePressed()
 {
   for(int i = 0; i< deku.length;i++)
    deku[i] = new Bacteria(); 
    background(0);
    
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse(mouseX, mouseY, 100, 100 );
    
 }
 void mouseOver()
 {
   
   
   
 }

 class Bacteria    
 {     
   int myX, myY, myColor;
   Bacteria()
   {
     myX = (int)(Math.random()*350);
     myY = (int)(Math.random()*350);
     myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   }
   
   void move ()
   {
     if(myX < mouseX)
       {
         myX = myX + (int)(Math.random()*5)-10;
       }
     else
       { 
         myX = myX + (int)(Math.random()*5)-20;
       }

    
   if(myY < mouseY)
     {
       myY = myY + (int)(Math.random()*5)-10;
     }
   else
     {
       myY = myY +(int)(Math.random()*5)-20;
     }
     
     if(myX == mouseX && myY == mouseY)
     {
       myX = myX + (int)(Math.random()*100-50);
       myY = myY + (int)(Math.random()*100-50);
     }

   
   }
   void show()
   {
     fill(int(random(256)),int(random(256)),int(random(256))) ;
     ellipse(mouseX, mouseY,10,10);
   }
 }
  
    

