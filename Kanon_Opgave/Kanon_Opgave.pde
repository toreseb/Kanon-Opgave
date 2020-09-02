import processing.sound.*;

player theP;

void setup(){
  loadSounds();
  size(1920,1080);
  rectMode(CENTER);
  theP = new player();
  
}



void draw(){
  theP.drawCanon();
  theP.rotation();
  theP.checkShoot();
  
  
  animations.runAnimations();
}
