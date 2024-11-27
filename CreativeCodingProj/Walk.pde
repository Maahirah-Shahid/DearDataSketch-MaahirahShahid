class Walk {
  PImage Spritesheet, scaledSpritesheet;
  PImage[] frames;
  int fX,fY,fW,fH; //the frame's x,y coordinates and width and height
  int tempX; //temporary x used to align the sprites so i can check if they display
  
  Walk() {
  Spritesheet = loadImage("Game Boy Advance - Sonic Advance 3 - Sonic the Hedgehog.png");
  fX = 280;
  fY = 97;
  fW = 35;
  fH = 45;
  frames = new PImage[8];
  tempX = 500/2;
  for (int i=0;i<8;i++){
    PImage frame = Spritesheet.get(fX+(i*fW),fY,fW,fH);
    frames[i] = createImage(frame.width*2,frame.height*2,ARGB); //a stands for alpha
    for (int x=0;x<frame.width;x++){ //manually copying each pixel to keep quality
      for (int y=0;y<frame.height;y++){
        color c = frame.get(x,y);
        frames[i].set(x*2,y*2,c); //top-left corner
        frames[i].set(x * 2 + 1, y * 2, c); //top-right corner
        frames[i].set(x * 2, y * 2 + 1, c); //bottom-left corner
        frames[i].set(x * 2 + 1, y * 2 + 1, c); //bottom-right corner
        }
      }
    }
  }
  
  void draw() {
    for (int i=0;i<8;i++){
      if ((i!=6) && (i!=7)){
        image(frames[i], tempX + (i * (fW*2)), 500);
      } else if (i==6){
        image(frames[i], tempX + (i * (fW*2)), 507); //needed because frame 6 is unaligned
      } else if (i==7){
        image(frames[i], tempX + (i * (fW*2)), 506); //needed because frame 7 is unaligned
      }
    }
  }
}
