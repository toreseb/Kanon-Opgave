import processing.sound.*;

player theP;

void setup() {
  loadSounds();
  size(1920, 1080);
  rectMode(CENTER);
  imageMode(CENTER);
  theP = new player();
  makePlanets(4);
}




void draw() {
  clear();

  animations.runAnimations();
}

void mouseReleased() {
  ballList.add(new balls(theP.shotEnergy));
  theP.shotEnergy=0;
  theP.energyDirec = abs(theP.energyDirec);
}
