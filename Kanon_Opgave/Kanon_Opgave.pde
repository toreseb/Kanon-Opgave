import processing.sound.*;

player theP;
score score;

void setup() {
  loadBackdrop();
  loadSounds();
  size(1920, 1080);
  rectMode(CENTER);
  imageMode(CENTER);
  theP = new player();
  score = new score();
  makePlanets(5);
  createRandomTargets(5);
}




void draw() {
  mapCreator.checkMapChange();
  clear();
  displayBackdrop();
  animations.runAnimations();
  cleanUp();
}

void mouseReleased() {
  new balls(theP.shotEnergy);
  theP.shotEnergy=0;
  theP.energyDirec = abs(theP.energyDirec);
}
