class moon{
    // Declaration of the variables
    float val;
    float speed = 0.02;
    
    float posX;
    float posY;
    
    float wd = 40;
    float ht = 40;
    
    void createMoon(){
    
        if (posX >= 406 && posX <= 537 &&  
        posY <= 178){          // if the ellipse reaches X and Y values over between the parameters in the condition
          fill(170,170,170,0); // set total transparency
          noStroke();          // set no borders
        } else {
          fill(170,170,170);   // set color with 0 transparency
          stroke(0);           // set color of the border
        }
    
        ellipse(posX,posY,wd,ht);  // drawing the ellipse
        val += speed;              // increase the 'val' by the value of 'speed' (0.02)
    }
    
    void rotateMoon(){
        //println(posY);
        /*
            CALCULATE THE SINE AND COSINE OF AN ANGLE
            The sine and cosine receive a value between 0 and PI*2 [6.28]
            and it will return a value between -1 and 1
        */
        posX = sin(val);    // posX stores the value resulted of the Sine of 'val'
        posY = cos(val);    // posY stores the value resulted of the Cosine of 'val' 
        
        posX *=200;    // Multiplies the value of posX by the amount of pixels I want the ellipse to travel horizontally
        posY *=50;     // Multiplies the value of posY by the amount of pixels I want the ellipse to travel vertically
        
        // Add the coordinates to posX and posY that I want the ellipse to travel relative to.
        posX += 410;   
        posY += 195;   
    }
    
    void resizeMoon(){  //method to resize the ellipse
      if (posY > 195){  // increase size when the ellipse travels over 195 value height
         wd += 0.1;
         ht += 0.1;
      }else{            // decrease size when the ellipse travels below 195 value height
         wd -= 0.1;
         ht -= 0.1;
      }
    }

}