ArrayList<String> text = new ArrayList<String>();

userInterface UI;
float mouseWheel;
void setup() {
  size(1920, 1080);
  myCreator = new creator();
  imageMode(CENTER);
  UI = new userInterface();
}

void draw() {
  clear();
  myCreator.checkClose();
  animations.runAnimations();
  for (objects i : objectList) {
    i.sizeCheck();
  }

  UI.drawUI();
}


void mouseClicked() {
  if (mouseY < 120) {
    UI.checkClicked();
  }
  if (mouseY > 120) {
    UI.reactClicked();
  }
}

void mouseReleased() {
  for (objects i : objectList) {
    i.moving = false;
  }
  allreadyMoving = false;
}

void mouseWheel(MouseEvent event) {
  mouseWheel = event.getCount();
}
