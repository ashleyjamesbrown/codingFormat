// #codingformat workshop
// ashley james brown
// 2017


// load an image

//creating our own version of the image(variabe,x,y) command
// iterate through loaded image pixel array and retrieve the colour at every pixel location
// draw a tiny square on screen filled with that colour

PImage img;

void setup() {
  size(400, 400); //must be the exact same size as the image loaded in as if not it goes glitchy !!! ;-) nice
  //400 by 400 is correct
  img = loadImage("beach.jpg"); //fun fact this is Westbay that i went to...where they filmed Broadchurch
}

void draw() {
  loadPixels(); //load the pixels - before manipulating pixel data in display window you must call this function
  
  //read in the image data, take the values, mess with them and pass them to the canvas display pixels
  
  // call loadpixels on the image itself as we want to manipulate its pixels (read / write)
  img.loadPixels(); 
  // iterate in a for loop through every position
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width; //special formula to get the location of the pixel
      
      // The functions red(), green(), and blue() pull out the 3 color components from a pixel.
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      //do stuff to the colours if you wish interactively
      // r=r+mouseX;
      
      //or to apply a pink filter you would increase the red and the blue say by 2*
      // r=r*2;
      // b=b*2;
      
      
      // Set the display pixel to be the colour from the image pixel
      //pixels is the canvas pixel array that we can reference becuase we called loadPixels()
      pixels[loc] =  color(r,g,b);  
  
    }
  }
  
  updatePixels(); //update the canvas/display pixels to show the values we have pulled in
}