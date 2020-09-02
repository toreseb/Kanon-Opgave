PImage backdrop;

void loadBackdrop() {
  backdrop = loadImage("nightSky0.png");
}


void displayBackdrop() {
  image(backdrop,width/2,height/2,1920,1384);
}
