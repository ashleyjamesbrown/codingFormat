// #codingformat workshop
// ashley james brown
// 2017


// cycle through an image pixel array
// and randomly pick a colour to assign to the grid squares
// 
PImage img;

void setup(){
size(600,600);

img = createImage(600,600,RGB);  // Make a PImage object


img.pixels[0] = color(255,0,0); // Sets the first pixel of the image to red
img.pixels[10] = color(255,0,0);
img.pixels[50] = color(255,0,0);


image(img,0,0);



// now do something where we load an array in of 


// Before we deal with pixels
img.loadPixels();  

for (int i = 0; i < img.pixels.length; i++) {
 
  float rand = random(255);
  float randR = random(255);
  float randG = random(255);
  float randB = random(255);
  color c = color(randR,randG,randB);
  img.pixels[i] = c;
}
// When we are finished dealing with pixels
img.updatePixels(); 





}


void draw(){
  image(img,0,0);
}