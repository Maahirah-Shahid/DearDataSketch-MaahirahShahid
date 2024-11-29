PImage img;
PImage frame1;
Walk Monday1;
Jog Monday2;

void setup() {
  size(1032, 1050);
  background(255);
  Monday1 = new Walk(40);
  Monday2 = new Jog(130);
}

void draw() {
  background(255);
  Monday1.draw();
  Monday2.draw();
}
