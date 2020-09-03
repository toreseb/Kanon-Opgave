class score {
  float timeAmount = 31.0;
  int scoreAmount = 0;
  float timer;
  PVector pos = new PVector();

  score() {
    pos.x = 20;
    pos.y = 20;
    timer = timeAmount;
  }

  void runScore() {
    timer -= 1.0/60.0;
    fill(255, 255);
    textSize(12);
    text("you have "+scoreAmount+" points", pos.x, pos.y);
    text(int(timer) + " seconds left", pos.x, pos.y*2);

    if (timer <= 0) {
      textSize(100);
      String text = ", good job!";
      if (currentMap == maxMaps) {
        text = ", game over";
        timer = 0;
      }
      text("You got "+scoreAmount+" points" + text, 250, height/2);
      moveBalls = false;
    }
    if (timer < -3 && currentMap != maxMaps) {
      currentMap ++;
      loadMap(currentMap);
    }
  }
 
}
