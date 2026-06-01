// Pong
// Block 2-4

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// sound variables
Minim minim;
AudioPlayer success;
AudioPlayer failure;
AudioPlayer music;

// mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

// entity variables
float leftx, lefty, leftd, rightx, righty, rightd; // paddles
float ballx, bally, balld, vx, vy; // ball

//scoring
int leftscore, rightscore, timer;

// keyboard variables
boolean wkey, skey, upkey, downkey;

boolean AI;

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
  size(800, 800, P2D);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  strokeWeight(10);
  
  lemon = createFont("Lemon-Regular.ttf", 100);
  textFont(lemon);
  
  // minim
  minim = new Minim(this);
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");
  music = minim.loadFile("MUSIC.mp3");
  
  reset();
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
