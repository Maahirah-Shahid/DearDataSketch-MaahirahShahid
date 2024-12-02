class Sprint {
  PImage Spritesheet, scaledSpritesheet;
  PImage[] frames;
  int fX,fY,fW,fH; //the frame's x,y coordinates and width and height
  int currentFrame, frameInterval; //used for checking what frame we're on, and interval is used to display the frames for however long
  int xPosOfAnim; //used to control the x position of the animation so sprite can move from right to left
  int moveSpeed; //used to control movement speed of the animation
  int yPosOfAnim; //used to control the y position of the animation
  
  Sprint(int yPosOfAnim) {
  Spritesheet = loadImage("Game Boy Advance - Sonic Advance 3 - Sonic the Hedgehog.png");
  fX = 490;
  fY = 142;
  fW = 51;
  fH = 45;
  frames = new PImage[8];
  currentFrame = 0;
  frameInterval = 8;
  xPosOfAnim = width;
  moveSpeed = 7;
  this.yPosOfAnim = yPosOfAnim;
  
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
    //check if frameCount is divisible by the frameInterval and if it is, updates currentFrame (basically updates current frame every few frames
    if (frameCount%frameInterval==0) {
      currentFrame++;
      
      if (currentFrame>7){ //to make sure the currentframe doesn't exceed the number of frames and loops
        currentFrame=0;
      } 
    }
    
    if (currentFrame==4) {
      image(frames[currentFrame], xPosOfAnim-12, this.yPosOfAnim);
    } else if (currentFrame==2) {
      image(frames[currentFrame], xPosOfAnim-4, this.yPosOfAnim);
    } else if (currentFrame==1) {
      image(frames[currentFrame], xPosOfAnim-8, this.yPosOfAnim);
    } else if (currentFrame==0) {
      image(frames[currentFrame], xPosOfAnim-17, this.yPosOfAnim);
    } else if (currentFrame==7){
      image(frames[currentFrame], xPosOfAnim-8, this.yPosOfAnim);
    } else if (currentFrame==6){
      image(frames[currentFrame], xPosOfAnim-4, this.yPosOfAnim);
    } else {
      image(frames[currentFrame], xPosOfAnim, this.yPosOfAnim);
    }
    
    // Move the sprite left by decreasing the x position
    xPosOfAnim -= moveSpeed;

    // If the sprite moves off the left side, reset its position to the right
    if (xPosOfAnim < -frames[currentFrame].width) {
        xPosOfAnim= width;  // Reset to the right side of the screen
      }
  }
}