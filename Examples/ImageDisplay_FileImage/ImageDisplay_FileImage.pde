// #codingformat workshop
// ashley james brown
// 2017

PImage img;

void setup() {
  size (800, 600);
  background(0);
  img = loadImage("popshello.png");
}

void draw() {

  image(img,0,0); //just display as is
  //why not add the mouse in

}

void keyPressed(){
 saveFrame("myImg-###.jpg"); 
}