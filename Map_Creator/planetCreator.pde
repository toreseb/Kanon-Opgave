class planet extends objects {
  

  planet(float getX, float getY, float getSize) {
    this.dataName = "p";
    this.pos.x = getX;
    this.pos.y = getY;
    this.size = getSize;
    this.cAnimation = new animation("planet", "png", 1, 1, pos.x, pos.y, int(size), int(size));
    objectList.add(this);
  }

  void drawSelf() {
    if (dist(mouseX, mouseY, pos.x, pos.y) < size && mousePressed) {
      moving = true;
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
