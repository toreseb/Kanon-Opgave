import processing.sound.*;
planet myPlanet;
player theP;

void setup() {
  loadSounds();
  size(1920, 1080);
  rectMode(CENTER);
  imageMode(CENTER);
  theP = new player();
  myPlanet = new planet();
}




void draw(){
  clear();
  
  theP.checkShoot();


  animations.runAnimations();
}
