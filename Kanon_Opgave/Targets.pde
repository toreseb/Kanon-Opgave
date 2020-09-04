class target extends objects {
  target(float getX, float getY, float getSize) {
    this.dataName = "target";
    this.pos.x = getX;
    this.pos.y = getY;
    this.size = getSize;
    this.cAnimation = new animation("target", "png", 1, 1, pos.x, pos.y, int(size), int(size));
    objectList.add(this);
    targetList.add(this);
  }

  void drawSelf() {
    for (objects i : objectList) {
      if (i.dataName != "ball") {
        continue;
      }
      if (dist(i.pos.x, i.pos.y, pos.x, pos.y) < size/2) {
        score.scoreAmount ++;
        removeList.add(this);
        targetList.remove(this);
      }
    }


    cAnimation.animationStep();
  }
}


void createRandomTargets(int amount) {
  for (int i = 0; i < amount; i ++) {
    new target(random(300, width-100), random(100, height-100), random(30, 60));
  }
}
