PImage mask;
PImage img;
void setup() {
  mask = loadImage("eye.jpg");
  img = loadImage("guv.jpg");
  img.resize(mask.width,mask.height);
  //dimensions of image
  size(500,500);
  img.mask(mask);
}

void draw() {
  background(255,0,0);
  //image in center
  image(img,width/2-img.width/2,height/2-img.height/2);
}