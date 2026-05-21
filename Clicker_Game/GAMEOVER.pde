void gameover() {
  background(magenta);
  
  // text
  fill(purple);
  textSize(100);
  text("GAMEOVER", 400, 200);
  textSize(50);
  text("Click anywhere to exit!", 400, 500);
  
  fill(pink);
  text("Score: " + score, 400, 300);
  if (score > highscore) {
    highscore = score;
    text("New highscore: " + highscore, 400, 400);
  } else {
    text("Highscore: " + highscore, 400, 400);
  }
}

void gameoverClicks() {
  mode = INTRO;
}
