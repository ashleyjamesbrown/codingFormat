PImage img;

float startX = 0;
float startY = 0;
float endX = 0;
float endY = 0;

void setup() {
  size(800, 600);
  background(0);
  img = loadImage("sunflower400.jpg");
}

void draw() {
  startX = int(random(0,img.width));
  startY = int(random(0,img.height));
  
  endX = int(random(0,img.width));
  endY = int(random(0,img.height));
  
  image(img, 0, 0);
  copy(startX, startY, 50, 50, endX, endY, 50, 50);
}