PImage riv;
PImage large;
int y = 0;
boolean flag = false;
void setup() {
  riv = loadImage("riv.jpg");
  large = loadImage("gov.jpg");
  riv.resize(800, 600);
  large.resize(800, 600);
  size(1000, 800);
  noCursor();
}


void draw() {
  background(255);
  if (flag) {
    for (int i = 0; i<riv.width; i++) {
      riv.set(i, y, large.pixels[i+y*riv.width]);
    }
    y++;
  }
  if (y >= riv.height) {
    flag = false;
  }
  image(riv, mouseX-riv.width/2, mouseY-riv.height/2);
  println(flag);
}

void mouseClicked() {
  flag = !flag;
  if (y >= riv.height) {
    flag = false;
  }
}