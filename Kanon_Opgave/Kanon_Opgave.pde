import processing.sound.*;

player theP;

void setup() {
  loadSounds();
  size(1920, 1080);
  rectMode(CENTER);
  theP = new player();
}



void draw() {
  clear();
  theP.checkShoot();


  animations.runAnimations();
}
