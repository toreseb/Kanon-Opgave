class balls extends objects {
  balls(float energy) {
    this.size = 100;
    pos.x = theP.pos.x+300*cos(theP.angle);
    pos.y = theP.pos.y+300*sin(theP.angle);
    vel.x = energy/10*cos(theP.angle);
    vel.y = energy/10*sin(theP.angle);
    objectList.add(this);
    this.cAnimation = new animation("kugle", "png", 4, 5, 0, 0, int(size), int(size));
    canonShot.play();
  }


  void drawSelf() {
    vel.add(acc);
    acc.mult(0);
    pos.add(vel);

    pushMatrix();
    translate(pos.x, pos.y);
    rotate(vel.heading());
    cAnimation.animationStep();
    popMatrix();
  }
}
