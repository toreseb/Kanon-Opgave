class player extends objects {
  float angle;
  int cLength = 30;
  int cWidth = 8;
  int timerC;
  float shotEnergy = 0;
  float energyDirec = 0.6;
  int maxEnergy = 80;

  player() {
    pos.x = 50;
    pos.y = height/2;
    this.cAnimation = new animation("kanon", "png", 1, 1, 0, 0, 700, 300);
    objectList.add(this);
  }
  void drawSelf() {

    imageMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    angle = atan2(mouseY-pos.y, mouseX-pos.x);
    rotate(angle);
    cAnimation.animationStep();
    popMatrix();
    checkHold();
  }

  void checkHold() {
    if (mousePressed) {

      shotEnergy += energyDirec;

      if (shotEnergy >= maxEnergy || shotEnergy <= 0) {
        energyDirec *= -1;
      }
      fill(shotEnergy*255/maxEnergy, 255-(255*shotEnergy/maxEnergy), 0);
      rect(pos.x+200, pos.y-200, shotEnergy*5, 20);
    }
  }
}
