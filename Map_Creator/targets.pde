class target extends objects {


  target(float getX, float getY, float getSize) {
    this.dataName = "target";
    this.pos.x = getX;
    this.pos.y = getY;
    this.size = getSize;
    this.cAnimation = new animation("target", "png", 1, 1, pos.x, pos.y, int(size), int(size));
    objectList.add(this);
  }

  void drawSelf() {
    if (dist(mouseX, mouseY, pos.x, pos.y) < size && mousePressed && allreadyMoving == false) {
      moving = true;
      allreadyMoving = true;
      cAnimation.setPosition(pos);
    }
    if (moving) {
      pos.x = mouseX;
      pos.y = mouseY;
      cAnimation.setPosition(pos);
    }
    cAnimation.animationStep();
  }
}
