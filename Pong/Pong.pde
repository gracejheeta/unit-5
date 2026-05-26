// Pong
// Block 2-4

// mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

// entity variables
float leftx, lefty, leftd, rightx, righty, rightd; // paddles
float ballx, bally, balld, vx, vy; // ball

// keyboard variables
boolean wkey, skey, upkey, downkey;

// Color variables
color black = #000000;
color white = #FFFFFF;
color red = #FF0900;
color orange = #FF9900;
color yellow = #FFF300;
color lightGreen = #8BFF86;
color darkGreen = #08B200;
color cyan = #00FFF9;
color lightBlue = #4BBBFF;
color darkBlue = #0017FC;
color purple = #6900FF;
color magenta = #D400FF;
color pink = #FFC4DE;
color cream = #F5EED2;

// Font variables
PFont lemon;

void setup() {
  size(800, 800);
  mode = INTRO;
  
  lemon = createFont("Lemon-Regular.ttf", 100);
  
  // initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  // initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  // initialize keyboard variables
  wkey = skey = upkey = downkey = false;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
