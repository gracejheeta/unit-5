void gameover() {
  background(magenta);
  music.pause();
  
  if (score > highscore) {
    highscore = score;
  }
  
  // text
  fill(purple);
  textSize(100);
  text("GAMEOVER", 400, 200);
  
  textSize(50);
  fill(pink);
  text("Score: " + score, 400, 300);
  text("Highscore: " + highscore, 400, 400);
  
  // restart button
  tactileRect(150, 500, 200, 100, purple, yellow, cream);
  fill(purple);
  textSize(30);
  text("Restart", 250, 550);

  //exit button
  tactileRect(450, 500, 200, 100, purple, yellow, cream);
  fill(purple);
  text("Exit", 550, 550);
}

void gameoverClicks() {
  // click restart or exit
  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
    mode = INTRO;
  } else if (mouseX > 450 && mouseX < 650 && mouseY > 500 && mouseY < 600) {
    exit(); 
  }
}
