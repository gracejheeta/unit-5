import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Grace Jheeta
// Block 1-2
// Thursday May 14, 2026

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

// Font variables
PFont lemon;

// Mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

// target variables
float x, y, d;
float vx, vy; //target velocity
int score, lives, highscore;

// sound variables
Minim minim;


void setup() {
  size(800, 800, P2D);
  textAlign(CENTER, CENTER);
  lemon = createFont("Lemon-Regular.ttf", 100);
  mode = INTRO;
  
  // target initialization
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  highscore = 0;
  
  // minim
  minim = new Minim(this);
  
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
