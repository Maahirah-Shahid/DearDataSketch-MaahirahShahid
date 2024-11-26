class Walk {
  PImage Spritesheet;
  //PImage frame1,frame2,frame3;
  PImage[] frames;
  int fX,fY,fW,fH; //the frame's x,y coordinates and width and height
  int tempX; //temporary x used to align the sprites so i can check if they display
  
  Walk() {
  Spritesheet = loadImage("Game Boy Advance - Sonic Advance 3 - Sonic the Hedgehog.png");
  image(Spritesheet,0,0);
  fX = 280;
  fY = 97;
  fW = 35;
  fH = 45;
  frames = new PImage[8];
  tempX = 500;
  for (int i=0;i<8;i++){
    frames[i] = get(fX+(i*fW),fY,fW,fH);
    println(frames[i]);
  }
  //frame1 = get(280,100,34,45);
  //frame2 = get(314,100,34,45);
  //frame3 = get(348,100,34,45);
  }
  
  void draw() {
    for (int i=0;i<8;i++){
      if ((i!=6) && (i!=7)){
        image(frames[i], tempX + (i * fW), 500);
      } else if (i==6){
        image(frames[i], tempX + (i * fW), 503); //needed because frame 6 is unaligned
      } else if (i==7){
        image(frames[i], tempX + (i * fW), 504); //needed because frame 7 is unaligned
      }
    }
    //image(frame1,500,500);
    //image(frame2,540,500);
    //image(frame3,580,500);
  }
}
