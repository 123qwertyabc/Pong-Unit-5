void game() {
  background(brown);
  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);
  strokeWeight(0);
  
  //scoreboard
  textSize(50);
  fill(pink);
  text(leftscore, width/4, 100);
  fill(green);
  text(rightscore, 3*width/4, 100);
  timer = timer-1;
  //paddles
  strokeWeight(5);
  fill(pink);
  circle(leftx, lefty, leftd);
  fill(green);
  circle(rightx, righty, rightd);
  strokeWeight(0);
  //move ball
  if (timer < 0) {
  ballx = ballx + vx;
  bally = bally +vy;
  }
  //move paddles
  if (wkey == true && lefty>=leftd/2) lefty = lefty -5;
  if (skey == true && lefty<=height-leftd/2) lefty = lefty +5;
  if (AI==false) {
    if (upkey == true && righty>=rightd/2) righty = righty -5;
    if (downkey == true && righty<=height-rightd/2) righty = righty +5;
  } else {
      if(ballx>400) {
        if(bally>righty) {
          righty=righty+2;
        }
      if(ballx>righty) {
        if(bally<righty) {
          righty=righty-2;
      }
  }
  }
  }
  //ball
  fill(255);
  circle(ballx, bally, balld);
  
  d=dist(leftx, lefty, ballx, bally);
  r = leftd/2;
  R = balld/2;
  if (d <= r+R) {
    vx=(ballx-leftx)/10;
    vy=(bally-lefty)/10;
    song.rewind();
    song.play();
  }
  
  d=dist(rightx, righty, ballx, bally);
  r = rightd/2;
  R = balld/2;
  if (d <= r+R) {
    vx=(ballx-rightx)/10;
    vy=(bally-righty)/10; 
    song.rewind();
    song.play();
  }
  
  //scoring
  if(rightscore==5) {
    mode=GAMEOVER;
  }
  if(leftscore==5) {
    mode=GAMEOVER;
  }
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }
  if (ballx > 800) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }
  //bouncing
  if (bally <= balld/2 || bally >= height-balld/2) {
    vy = vy*-1;
  }
  //pause
  stroke(0);
  fill(255);
  circle(100, 100, 100);
  strokeWeight(5);
  line(90, 70, 90, 125);
  line(110, 70, 110, 125);
  strokeWeight(0);
}
void gameClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
       circle(100, 100, 100); 
       fill(0);
       triangle(81, 73, 130, 98, 81, 123); 
       mode = PAUSE;
  }
}
