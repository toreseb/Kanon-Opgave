class balls extends objects {

  int size = 50;


  balls() {
    pos.x = theP.pos.x+300*cos(theP.angle);
    pos.y = theP.pos.y+300*sin(theP.angle);
    vel.x = 3*cos(theP.angle);
    vel.y = 3*sin(theP.angle);
    objectList.add(this);
  }


  void drawSelf() {
    vel.add(acc);
    acc.mult(0);
    pos.add(vel);

    fill(255, 255, 255, 255);
    ellipse(pos.x, pos.y, size, size);
  }
  void bTimer() {
    if (mousePressed) {
    }
  }
}
