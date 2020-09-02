class player extends objects {
  float angle;
  int cLength = 30;
  int cWidth = 8;
  PVector mPos = new PVector();

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
    mPos.x = mouseX;
    mPos.y = mouseY;
    angle = atan2(mouseY-pos.y,mouseX-pos.x);
    rotate(angle);
    cAnimation.animationStep();
    popMatrix();
  }


  void checkShoot() {
    if (mousePressed) {
      shootCanon();
    }
  }


  void shootCanon() {
    canonShot.play();
  }
}
