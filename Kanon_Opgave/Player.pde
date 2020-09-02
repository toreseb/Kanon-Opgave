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

  void drawCanon() {


    rect(pos.x, pos.y, cLength, cWidth);
  }
  void rotation() {
    translate(pos.x, pos.y);
    mPos.x = mouseX;
    mPos.y = mouseY;
    angle = PVector.angleBetween(mPos, pos);
    rotate(angle);
    line(0, 0, mouseX, mouseY);
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
