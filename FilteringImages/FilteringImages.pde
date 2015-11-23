PImage jel;
PImage lig;
boolean flag = false;
//JELLYFISH IMAGE
void setup() {
  jel = loadImage("Jellyfish.jpg");
  size(800, 600);
  jel.resize(width, height);
  //POSTERIZATION

  jel.filter(POSTERIZE, 6);
}

void draw() {
  background(0);
  image(jel, 0, 0);
  //TOGGLE DILATION AND EROSION BY CLICKING
  if (flag) {
    jel.filter(ERODE);
  } else {
    jel.filter(DILATE);
  }
}

void mouseClicked() {
  flag = !flag;
}