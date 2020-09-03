ArrayList<String> text = new ArrayList<String>();
creator myCreator;
void setup() {
  size(1920, 1080);
  myCreator = new creator();
}

void draw() {
  myCreator.checkClose();
  animations.runAnimations();
}


void mouseClicked() {
  new planet(mouseX,mouseY,50);
  
}
