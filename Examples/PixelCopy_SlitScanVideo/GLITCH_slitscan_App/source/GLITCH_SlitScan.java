import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.video.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class GLITCH_SlitScan extends PApplet {


 


Capture video;

int videoSliceX;
int drawPositionX;

public void setup() {
  
  
  // This the default video input, see the GettingStartedCapture 
  // example if it creates an error
  video = new Capture(this,640, 480);
  
  // Start capturing the images from the camera
  video.start();  
  
  videoSliceX = video.width / 2;
  drawPositionX = width - 1;
  background(0);
}


public void draw() {
  if (video.available()) {
    video.read();
    video.loadPixels();
    
    // Copy a column of pixels from the middle of the video 
    // To a location moving slowly across the canvas.
    loadPixels();
    for (int y = 0; y < video.height; y++){
      int setPixelIndex = y*width + drawPositionX;
      int getPixelIndex = y*video.width  + videoSliceX;
      pixels[setPixelIndex] = video.pixels[getPixelIndex];
    }
    updatePixels();
    
    drawPositionX--;
    // Wrap the position back to the beginning if necessary.
    if (drawPositionX < 0) {
      drawPositionX = width - 1;
    }
  }
}


public void keyPressed(){
 switch (key){
  case's':
   saveFrame("GLITCH_slitscan-###.jpg");
  break;
 }
}
  public void settings() {  size(1200, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#000000", "--stop-color=#cccccc", "GLITCH_SlitScan" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
