Walk WalkReaction1, WalkReaction2;
Jog JogReaction1, JogReaction2, JogReaction3, JogReaction4, JogReaction5;
Run RunReaction1, RunReaction2, RunReaction3;
Sprint SprintReaction1;
Boolean enterPressed;
int Y_AXIS, X_AXIS;
color b1, b2, c1, c2;

void setup() {
  size(1032, 1050);
  Y_AXIS = 1;
  X_AXIS = 2;
  b1 = color(255, 165, 0);
  b2 = color(0, 102, 204);
  c1 = color(204, 102, 0);
  c2 = color(0, 102, 153);
  
  //background(255);
  enterPressed = false;
  WalkReaction1 = new Walk(40);
  JogReaction1 = new Jog(130);
  JogReaction2 = new Jog(220);
  RunReaction1 = new Run(310);
  SprintReaction1 = new Sprint(400);
  RunReaction2 = new Run(490);
  JogReaction3 = new Jog(580);
  WalkReaction2 = new Walk(670);
  JogReaction4 = new Jog(760);
  RunReaction3 = new Run(860);
  JogReaction5 = new Jog(950);
  
  drawBackgroundGradient();
}

void draw() {
  // Foreground
  setGradient(0, 0, width, height, b1, b2, X_AXIS);
  //background(255);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Credit for Sprites goes to Sega and Sonic Team. Spritesheet ripped by Ren 'Foxx' Ramos", 365,10);
  fill(0);
  if (enterPressed) {
    WalkReaction1 = new Walk(40);
    WalkReaction2 = new Walk(130);
    JogReaction1 = new Jog(220);
    JogReaction2 = new Jog(310);
    JogReaction3 = new Jog(400);
    JogReaction4 = new Jog(490);
    JogReaction5 = new Jog(580);
    RunReaction1 = new Run(670);
    RunReaction2 = new Run(760);
    RunReaction3 = new Run(860);
    SprintReaction1 = new Sprint(950);
  }
  WalkReaction1.draw();
  JogReaction1.draw();
  JogReaction2.draw();
  RunReaction1.draw();
  SprintReaction1.draw();
  RunReaction2.draw();
  JogReaction3.draw();
  WalkReaction2.draw();
  JogReaction4.draw();
  RunReaction3.draw();
  JogReaction5.draw();
}

void keyPressed() {
  if (keyCode == ENTER) {
    enterPressed = !enterPressed;
  }
}

void drawBackgroundGradient() {
  //draws background gradient once
  loadPixels();
  for (int y = 0; y < height; y++) {
    float inter = map(y, 0, height, 0, 1);
    color c = lerpColor(b1, b2, inter);
    for (int x = 0; x < width; x++) {
      pixels[x + y * width] = c;
    }
  }
  updatePixels();
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis) {
  noFill();
  loadPixels();

  if (axis == Y_AXIS) {  //top to bottom gradient
    for (int i = y; i < y + h; i++) {
      float inter = map(i, y, y + h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      for (int j = x; j < x + w; j++) {
        pixels[j + i * width] = c;
      }
    }
  } else if (axis == X_AXIS) {  //left to right gradient
    for (int i = x; i < x + w; i++) {
      float inter = map(i, x, x + w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      for (int j = y; j < y + h; j++) {
        pixels[i + j * width] = c;
      }
    }
  }

  updatePixels();
}
