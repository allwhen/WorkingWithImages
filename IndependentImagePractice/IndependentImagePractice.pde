PImage img;
PImage ant;
PImage im2;
PImage han;
//number of clicks
int c = 0;
boolean flag = false;

void setup() {
  img = loadImage("Hydrangeas.jpg");
  ant = loadImage("anthracite.jpg");
  img.resize(width,height);
  ant.resize(width,height);
  img.mask(ant);
  im2 = loadImage("Hydrangeas.jpg");
  im2.resize(width,height);
  //white hand and transparent from black on white
  han = loadImage("hand.png");
  han.filter(INVERT);
  han.mask(han);
  han.resize(128,245);
  size(800,600);
  textSize(20);
}

void draw() {
  //shows through mask. Changes blue value per click and resets every 8th
  background(200,50,32*c%256);
  
  //show masked image if mouse pressed, else the original
  if (mousePressed) {
    image(img,0,0);
  }
  else {
    image(im2,0,0);
  }
  //artistic filter 
  filter(POSTERIZE,4);
  //write click number
  text(c,30,200);
  
  //once clicked 16 times, special message and flag set.
  if(c==16) {
    text("hand retrieved",420,20);
    flag = true;
    noCursor();
  }
  
  //gives hand "cursor" after 16 clicks
  if (flag) {
     image(han,mouseX-han.width/2,mouseY-han.height/2);
  }
}

void mouseClicked() {
  c+=1;
}