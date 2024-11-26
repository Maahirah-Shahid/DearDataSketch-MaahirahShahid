PImage img;
PImage frame1;

void setup() {
  size(1032, 1943);
  background(255);
  img = loadImage("Game Boy Advance - Sonic Advance 3 - Sonic the Hedgehog.png");
  image(img,0,0);
  frame1 = get(280,100,34,45);
}

void draw() {
  background(255);
  image(frame1,500,500);
}
