void pause() {
}
void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    stroke(0);
    fill(255);
    circle(100, 100, 100);
    strokeWeight(5);
    line(90, 70, 90, 125);
    line(110, 70, 110, 125);
    strokeWeight(0);
    mode=GAME;
  }
}
