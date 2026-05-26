// Grace Jheeta
// Block 1-2
// Thursday May 14, 2026

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

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

// Mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

// target variables
float x, y, targetSize;
float vx, vy; //target velocity

// game variables
int score, lives, highscore;

// slider variable
float sliderY = 650;

// sound variables
Minim minim;
AudioPlayer success;
AudioPlayer failure;
AudioPlayer music;

// image variables
PImage orca;
PImage rabbit;
boolean orcaOn = false;
boolean rabbitOn = false;

void setup() {
  size(800, 800, P2D);
  textAlign(CENTER, CENTER);
  strokeWeight(5);
  
  lemon = createFont("Lemon-Regular.ttf", 100);
  orca = loadImage("orca.png");
  rabbit = loadImage("rabbit.png");
  
  // minim
  minim = new Minim(this);
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");
  music = minim.loadFile("MUSIC.mp3");
  
  mode = INTRO;
  
  reset();
  targetSize = 100; // if start is clicked before options
  highscore = 0;
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
  } else if (mode == OPTIONS) {
    options(); 
  } else {
    println("Error: Mode = " + mode);
  }
}
