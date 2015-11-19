PImage jel;
//JELLYFISH IMAGE
void setup() {
  jel = loadImage("Jellyfish.jpg");
  size(800,600);
  jel.resize(width,height);
  //COLOR INVERSION
  jel.filter(INVERT);
}

void draw() {
  //DRAWING THE JELLYFISH
  image(jel,0,0);
}