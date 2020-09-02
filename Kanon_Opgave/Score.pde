class score extends objects {
  int timeAmount = 60;
  int scoreValue;
  int scoreAmount;
  int timer;

  score() {
    pos.x = 20;
    pos.y = 20;
    scoreAmount = 0;
    timer = 60;
    objectList.add(this);
  }

  void drawSelf() {
    
    fill(255,255);
    score.countdown();
    textSize(12);
    text("you have "+scoreAmount+" points", pos.x, pos.y);
    text(timer + " seconds left",pos.x,pos.y*2);
  }
  void countdown(){
    timer = timeAmount - frameCount;
    if (timer <= 0){
      timer = 0; 
      textSize(100);
      text("You got "+scoreAmount+" points, good job!",250,height/2);
    }
  }
}
