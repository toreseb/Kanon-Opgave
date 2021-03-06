class planet extends objects {


  planet(float getX, float getY, float getSize) {
    this.dataName = "planet";
    this.pos.x = getX;
    this.pos.y = getY;
    this.size = getSize;
    this.cAnimation = new animation("planet", "png", 1, 1, pos.x, pos.y, int(size), int(size));
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
    noStroke();
    fill(120, 120, 255, 100);
    ellipse(pos.x, pos.y, 5*size, 5*size);
    cAnimation.animationStep();
  }
}
