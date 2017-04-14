// #codingformat workshop
// ashley james brown
// 2017
 
import processing.video.*;

Capture video;

int videoSliceX;
int drawPositionX;

void setup() {
  size(1200, 480);
  
  // This the default video input, see the GettingStartedCapture 
  // example if it creates an error
  video = new Capture(this,640, 480);
  
  // Start capturing the images from the camera
  video.start();  
  
  videoSliceX = video.width / 2;
  drawPositionX = width - 1;
  background(0);
}


void draw() {
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


void keyPressed(){
 switch (key){
  case's':
   saveFrame("GLITCH_slitscan-###.jpg");
  break;
 }
}