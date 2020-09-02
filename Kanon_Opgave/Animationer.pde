animationEngine animations = new animationEngine();

class animation {
  PVector position = new PVector();
  PVector size = new PVector();
  int frameTime;
  int cFrame = 1;
  int frameAmount;
  ArrayList<PImage> imageList = new ArrayList<PImage>();


  animation(String fileName, String fileType, int fileAmount, int getFrameTime, float getX, float getY, int sizeX, int sizeY) {
    this.position.x = getX;
    this.position.y = getY;
    this.frameTime = getFrameTime;
    this.frameAmount = fileAmount-1;
    this.size.x = sizeX;
    this.size.y = sizeY;
    for (int i = 0; i < fileAmount; i ++) {
      PImage newIMG = loadImage(fileName+i+"."+fileType);
      imageList.add(newIMG);
    }
    animations.animationList.add(this);
  }

  void animationStep() {

    int getFrame = floor(cFrame/frameTime);
    if (getFrame > frameAmount) {
      getFrame = 0;
      cFrame = 0;
    }
    image(imageList.get(getFrame), position.x, position.y, size.x, size.y);
    cFrame ++;
  }
  void setPosition(PVector newPos) {
    position = newPos;
  }
  void setFramePos(int getNewFrame) {
    cFrame = getNewFrame/frameTime;
  }
}

class animationEngine {
  ArrayList<animation> animationList = new ArrayList<animation>();
  ArrayList<animation> removeList = new ArrayList<animation>();


  void runAnimations() {
    for (objects i : objectList) {
      i.cAnimation.animationStep();
    }
    for (animation i : removeList) {
      removeList.remove(i);
    }
  }
}
