ArrayList<String> text = new ArrayList<String>();
creator myCreator;
void setup() {
  size(1920, 1080);
  myCreator = new creator();
}

void draw() {
  clear();
  myCreator.checkClose();
  animations.runAnimations();
}


void mouseClicked() {
  new planet(mouseX,mouseY,50);
  
}

void mouseReleased() {
  for (objects i: objectList) {
    i.moving = false;
  }
  
}
