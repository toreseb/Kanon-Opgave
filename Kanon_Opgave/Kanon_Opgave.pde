import processing.sound.*;

player theP;
score score;


void setup() {
  loadSounds();
  size(1920, 1080);
  rectMode(CENTER);
  imageMode(CENTER);
  theP = new player();
  score = new score();
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
