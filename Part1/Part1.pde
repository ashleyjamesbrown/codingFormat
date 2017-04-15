float r = 0;
float g = 0;
float b = 0;

float x = 0;
float y = 0;

void setup() {
  size(800, 600); // width and height in pixels
  background(90, 17, 188); // r,g,b
}
void draw() {
  
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  
  x = random(0,width);
  y = random(0,height);
  noStroke();
  fill(r,g,b,90);
  
  rect(x, y, mouseX, mouseY); //circle at x,y,width,height
}


void keyPressed(){
  saveFrame("myImage-###.jpg");
}