class userInterface {
  String placer = "planet";
  animation planetDrawing;
  animation targetDrawing;

  userInterface() {
    planetDrawing = new animation("planet", "png", 1, 1, 300, 60, 100, 100);
    targetDrawing = new animation("target", "png", 1, 1, 450, 60, 100, 100);
  }


  void drawUI() {
    noStroke();
    fill(100);
    rect(0, 0, width, 120);

    planetDrawing.animationStep();
    targetDrawing.animationStep();
    noFill();
    stroke(255, 0, 0);
    strokeWeight(10);
    if (placer == "planet") {
      ellipse(300, 60, 100, 100);
    }
    if (placer == "target") {
      ellipse(450, 60, 100, 100);
    }
  }


  void checkClicked() {
    if (mouseX > 250 && mouseX < 350) {
      placer = "planet";
    } else if (mouseX > 400 && mouseX < 500) {
      placer = "target";
    }
  }

  void reactClicked() {
    if (placer == "planet") {
      new planet(mouseX, mouseY, 50);
    } else if (placer == "target") {
      new target(mouseX, mouseY, 50);
    }
  }
}
