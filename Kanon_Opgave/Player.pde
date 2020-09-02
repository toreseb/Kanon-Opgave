class player extends objects {
  float angle;
  int cLength = 30;
  int cWidth = 8;
  int timerC;
  boolean press=false;


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
  }

  void checkShoot() {
    if (mousePressed) {
      if (!press) {

        shootCanon();
        ballList.add(new balls());
        press = true;
        println(press);
      }
    } else {
      press = false;
    }
  }



  void shootCanon() {
    canonShot.play();
  }
}
