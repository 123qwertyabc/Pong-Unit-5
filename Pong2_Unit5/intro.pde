void intro() {
  background(255);
  fill(0);
  textSize(100);
  textAlign(CENTER);
  text("PONG", width/2, height/2 - 100);
  //buttons
  rectMode(CENTER);
  strokeWeight(1);
  stroke(0);
  fill(255);
  rect(width/2-100, height/2, 150, 100);
  rect(width/2+100, height/2, 150, 100);
  fill(0);
  textSize(50);
  text("1p", width/2-100, height/2+20);
  text("2p", width/2+100, height/2+20);
}
void introClicks() {
  mode=GAME;
}
