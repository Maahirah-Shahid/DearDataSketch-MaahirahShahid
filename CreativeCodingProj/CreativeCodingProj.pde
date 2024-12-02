Walk WalkReaction1, WalkReaction2;
Jog JogReaction1, JogReaction2, JogReaction3, JogReaction4, JogReaction5;
Run RunReaction1, RunReaction2, RunReaction3;
Sprint SprintReaction1;
Boolean enterPressed;

void setup() {
  size(1032, 1050);
  background(255);
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
}

void draw() {
  background(255);
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
  
