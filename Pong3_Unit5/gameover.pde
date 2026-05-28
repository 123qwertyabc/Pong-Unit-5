void gameover() {
  background(0);
  textSize(100);
  textAlign(CENTER);
  text("GAME OVER", width/2, height/2);
  textSize(50);
  if (leftscore>rightscore) {
    text("Red Wins", width/2, height/2 + 100);
  }
  if(leftscore<rightscore) {
    text("Green Wins", width/2, height/2 + 100);
  }
 
}
void gameoverClicks() {
  mode=INTRO;
  leftscore = rightscore = 0;
  lefty = height/2;
  righty = height/2;
  ballx=width/2;
  bally=height/2;
  timer=100;
}
