/*
    Planetarium
    Created by Danny Lantigua
    October 26th 2017
    Wordpress post: https://theowllantigua.wordpress.com/2017/10/27/planetarium-final-project-for-first-module-in-the-techhire-program/
*/

moon phobos = new moon();    // instantiate the object

void setup(){
   size(700,400);   // set size to the canvas
}

void draw(){
  background(0);    // set background to black
  fill(190,191,222);// set color to the Planet
  ellipse(width/1.5,height/2,150,150);  // draw the ellipse: the planet
   
  // execute the methods on the class 'moon'
  phobos.rotateMoon();
  phobos.createMoon(); 
  phobos.resizeMoon();
}