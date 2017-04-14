// #codingformat workshop
// ashley james brown
// 2017



//just use an image on the screen and mess with the screen not the image.


// load an image
// iterste through its pixel array and retruieve the colours
// draw a square on screen with that colour

PImage img;
//color[] myCol; //laets make our own array to store colours that we have pulled out of the image

void setup() {
  size(401, 399); //must be the exact same size as the image loaded in
  //400 by 400
  img = loadImage("beach.jpg");
}

void draw() {
  loadPixels(); //load the canvas pixels
  
  //pull colour from the image pixel
  img.loadPixels(); 
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;
      
      // The functions red(), green(), and blue() pull out the 3 color components from a pixel.
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      //do stuff to the colours
      r=r+mouseX;
      
      // Set the display pixel to the image pixel
      //i.e the canvas and what we see
      //pixels is the canvas
      pixels[loc] =  color(r,g,b);  
    //  myCol[loc]=color(r,g,b);
    }
  }
  updatePixels(); //update the canvas pixels
}




// get the colour from an image pixels
// ammend them using maths or random
// use the mouse




// next objective is to grab pixels and reshuffle within the canvas
// 

//  copy(x1, y1, w, w, x2, y2, w, w);