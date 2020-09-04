ArrayList<planet> planetList = new ArrayList<planet>();

void makePlanets(int amount) {
  for (int i= 0; i < amount; i ++) {
    planetList.add(new planet(random(40, width-60), random(60, height-60), random(40, 70)));
  }
}
class planet extends solids {
  planet(float getX, float getY, float getSize) {
    this.dataName = "planet";
    this.size = getSize;
    this.pos.x = getX;
    this.pos.y = getY;
    this.cAnimation = new animation("planet", "png", 1, 1, pos.x, pos.y, int(size), int(size));
    objectList.add(this);
  }


  void drawSelf() {
    for (balls i : ballList) {
      if (PVector.dist(i.pos, pos) < 2.5*size) {
        float angle = atan2(i.pos.y-pos.y, i.pos.x-pos.x);
        PVector force = new PVector(-0.1, 0);
        force.rotate(angle);
        i.acc.add(force);
      }
    }
    for (balls i : ballList) {
      if (dist(i.pos.x, i.pos.y, pos.x, pos.y) < size/2)   
        removeList.add(i);
    }

    fill(120, 120, 255, 100);
    ellipse(pos.x, pos.y, 5*size, 5*size);
    cAnimation.animationStep();
  }
}
