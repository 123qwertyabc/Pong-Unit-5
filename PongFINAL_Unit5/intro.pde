void intro() {
  background(255);
  fill(0);
  textSize(100);
  textAlign(CENTER);
  text("PONG", width/2, height/2 - 100);
  //buttons
  strokeWeight(1);
  stroke(0);
  fill(255);
  tactile1p();
  rect(200, 300, 150, 100);
  fill(255);
  tactile2p();
  rect(400, 300, 150, 100);
  fill(0);
  textSize(50);
  text("1p", width/2-120, height/2+70);
  text("2p", width/2+80, height/2+70);
}
void tactile1p() {
  if(mouseX>200 && mouseX<350 && mouseY>300 && mouseY<450){
    fill(255, 255, 0);
    hovering1p = true;
  } else {
    hovering2p = false;
  }
}
void tactile2p() {
  if(mouseX>400 && mouseX<550 && mouseY>300 && mouseY<450){
    fill(255, 255, 0);
    hovering2p = true;
  } else {
    hovering2p = false;
  }
}
void introClicks() {
  if(hovering1p == true) {
    mode = GAME;
    AI = true;
  }
  if(hovering2p == true) {
    mode = GAME;
    AI = false;
  }
}
