//Pong!
//Bryson Kwong
//2-4
PFont font;
//colors
color lightPurple = #BF9A82;
color brown = #45201E;
color pink = #FF0F53;
color green = #558A67;
//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float px, py, pd, bd, d, r, R, vx, vy;
//scoring
int leftscore, rightscore, timer;
//keyboard variables
boolean wkey, skey, upkey, downkey;

void setup() {
  size(800, 600);
  mode = INTRO;
  font = createFont("Tenada.ttf", 100);
  textFont(font);
  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = -10;
  //initialize score
  rightscore = leftscore = 0;
  timer = 100;
  //intialize keyboard vars
  wkey = skey = upkey = downkey = false;
}
void draw() {
  if (mode == INTRO){
    intro();
  } else if (mode == GAME){
    game();
  } else if (mode == PAUSE){
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  } else {
    println("Error Mode = " + mode);
}
}
