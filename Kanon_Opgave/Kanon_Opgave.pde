import processing.sound.*;
int currentMap = 0;
int maxMaps;
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
  loadMap(currentMap);
  maxMaps = getMaxMaps();
}




void draw() {
  mapCreator.checkMapChange();
  clear();
  displayBackdrop();
  animations.runAnimations();
  cleanUp();
  score.runScore();
}

void mouseReleased() {
  new balls(theP.shotEnergy);
  theP.shotEnergy=0;
  theP.energyDirec = abs(theP.energyDirec);
}
