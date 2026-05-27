void gameover() {
  background(0);
  textSize(100);
  textAlign(CENTER);
  text("GAME OVER", width/2, height/2);
  textSize(50);
  if (leftscore>rightscore) {
    text("Red Wins", width/2, height/2 + 100);
  } else {
    text("Green Wins", width/2, height/2 + 100);
  }
 leftscore = rightscore = 0;
}
void gameoverClicks() {
  mode=INTRO;
}
