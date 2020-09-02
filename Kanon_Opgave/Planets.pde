class planet extends solids {
  float size;

  planet() {
    this.size = random(30, 70);
    this.pos.x = random(400, width);
    this.pos.y = random(200, height-200);
    this.cAnimation = new animation("planet", "png", 1, 1, pos.x, pos.y, int(size), int(size));
    objectList.add(this);
  }


  void drawSelf() {
    cAnimation.animationStep();

    fill(120, 120, 255, 100);
    ellipse(pos.x, pos.y, 5*size,5*size);
  }
}
