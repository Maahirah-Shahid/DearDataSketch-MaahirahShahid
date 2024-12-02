PImage img;
PImage frame1;
Walk Monday1;
Jog Monday2;
Run Monday3;
Sprint Monday4;

void setup() {
  size(1032, 1050);
  background(255);
  Monday1 = new Walk(40);
  Monday2 = new Jog(130);
  Monday3 = new Run(220);
  Monday4 = new Sprint(310);
}

void draw() {
  background(255);
  Monday1.draw();
  Monday2.draw();
  Monday3.draw();
  Monday4.draw();
}
