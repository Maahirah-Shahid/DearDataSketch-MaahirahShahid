class Walk {
  PImage Spritesheet;
  PImage frame1;
  
  Walk() {
  Spritesheet = loadImage("Game Boy Advance - Sonic Advance 3 - Sonic the Hedgehog.png");
  image(Spritesheet,0,0);
  frame1 = get(280,100,34,45);
  }
  
  void draw() {
    image(frame1,500,500);
  }
}
