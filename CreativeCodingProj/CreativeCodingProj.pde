PImage img;
PImage frame1;
Walk walk;

void setup() {
  size(1032, 1943);
  background(255);
  walk = new Walk();
}

void draw() {
  background(255);
  walk.draw();
}
