class player extends objects {
  float angle;
  int cLength = 30;
  int cWidth = 8;


  player() {
    pos.x = 50;
    pos.y = height/2;
    this.cAnimation = new animation("kanon", "png", 1, 1, 0, 0, 700, 300);
    objectList.add(this);
  }

  void drawCanon() {
  
  
    
  }
  void rotation() {
    
    translate(pos.x, pos.y);
    angle = atan2(mouseY-pos.y,mouseX-pos.x);
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
