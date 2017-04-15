PImage img;

void setup(){
 size(800,600);
 background(0);
 imageMode(CENTER);
 img = loadImage("pops.png");
}

void draw(){
  tint(mouseX,0,mouseY);
  image(img,width/2,height/2); //variable,x,y,width,height
}

void keyPressed(){
  saveFrame("myImage-###.jpg");
}