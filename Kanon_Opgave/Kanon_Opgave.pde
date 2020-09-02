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
  makePlanets(20);
}




void draw() {
  clear();
  displayBackdrop();

  animations.runAnimations();
}

void mouseReleased() {
  ballList.add(new balls(theP.shotEnergy));
  theP.shotEnergy=0;
  theP.energyDirec = abs(theP.energyDirec);
}
