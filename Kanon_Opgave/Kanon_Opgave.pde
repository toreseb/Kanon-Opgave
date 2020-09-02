import processing.sound.*;

player theP;
balls ball;

void setup() {
  loadSounds();
  size(1920, 1080);
  rectMode(CENTER);
  imageMode(CENTER);
  theP = new player();
  
}




void draw(){
  clear();
  
  theP.checkShoot();
  balls.bTimer();


  animations.runAnimations();
}
