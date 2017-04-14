// #codingformat workshop
// ashley james brown
// 2017


import processing.video.*;
Capture cam;

void setup(){
  size(800,600);
  background(0);
  //basic init camera with no error check
  cam = new Capture(this, 640, 480);
  cam.start();
  imageMode(CENTER);
}

void draw(){
  //best to check if we can call the camera in each frame
  if (cam.available() == true) {
    cam.read();
  }
  
  //draw the camera image to the screen 
  //notice the syntax is similar to PImage
  image(cam, mouseX, mouseY, cam.width/2, cam.height/2);
  
  //filter
  //tint
  //erode
  
}