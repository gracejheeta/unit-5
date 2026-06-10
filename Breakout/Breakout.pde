// Grace Jheeta
// Block 2-4
// Tuesday June 2, 2026

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
int musicTimer;

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

// mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

// game variables
int score, lives, timer, targetScore;

//entity variables
float paddleX, paddleY, paddleD; // paddle
float ballX, ballY, ballD, vx, vy; // ball

//bricks
int[] brickx;
int[] bricky;
int brickd;
int numBricks;
boolean[] alive;

// keyboard variables
boolean leftkey, rightkey;

//gif variables
PImage[] lose;
int loseNumFrames;
int loseFrame;

void setup() {
  size(1000, 1000, P2D);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  strokeWeight(5);
  
  //font
  lemon = createFont("Lemon-Regular.ttf", 100);
  textFont(lemon);
  
  leftkey = rightkey = false;
  
  //minim
  minim = new Minim(this);
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");
  music = minim.loadFile("MUSIC.mp3");

  //initialize diameters
  ballD = 30;
  paddleD = 100;
  
  //bricks
  numBricks = 54;
  targetScore = numBricks;
  brickd = 50;
  brickx = new int[numBricks];
  bricky = new int[numBricks];
  alive = new boolean[numBricks];
  
  int tempx = 100;
  int tempy = 100;
  for (int i = 0; i < numBricks; i ++) {
    brickx[i] = tempx;
    bricky[i] = tempy;
    tempx += 100;

    if (tempx >= width) {
      tempy += 100;
      tempx = 100;
    }
  }
  
  reset();
  
  //initialize lose gif
  loseNumFrames = 11;
  lose = new PImage[loseNumFrames];
  
  for (int i = 0; i < loseNumFrames; i ++) {
    lose[i] = loadImage("frame_" + i + "_delay-0.1s.gif");
  }
  
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
  println(musicTimer);
}
