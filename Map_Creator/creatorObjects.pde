ArrayList<objects> objectList = new ArrayList<objects>();
boolean allreadyMoving = false;

class objects {
  String dataName;
  float size;
  boolean moving = false;

  animation cAnimation;
  PVector pos = new PVector();  

  void drawSelf() {
  }

  void sizeCheck() {
    if (dist(mouseX, mouseY, pos.x, pos.y) < size/2) {
      size += mouseWheel;
      cAnimation.setSize(int(size), int(size));
    }
  }
}
