player theP;

void setup(){
  size(1920,1080);
  rectMode(CENTER);
  theP = new player();
  
}



void draw(){
  theP.drawCanon();
  theP.rotation();
  
  
  
  animations.runAnimations();
}
