import processing.sound.*;
planet myPlanet;
player theP;
balls ball;
score score;

void setup() {
  loadSounds();
  size(1920, 1080);
  rectMode(CENTER);
  imageMode(CENTER);
  theP = new player();
  myPlanet = new planet();
  score = new score();
}




void draw(){
  clear();
  
  theP.checkShoot();

  animations.runAnimations();
}
