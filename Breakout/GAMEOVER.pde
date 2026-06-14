void gameover() {
  background(red);
  strokeWeight(10);
  music.pause();
  
  // display win or loss
  fill(white);
  textSize(100);
  
  if (score == targetScore) {
    //win gif
    image(win[winFrame], 0, 0, width, height);
    if (frameCount % 5 == 0) winFrame ++;
    if (winFrame == winNumFrames) winFrame = 0;
    
    text("YOU WIN!", width/2, height/2 - 100);
  } else {
    //lose gif
    image(lose[loseFrame], 0, 0, width, height); 
    if (frameCount % 10 == 0) loseFrame ++;
    if (loseFrame == loseNumFrames) loseFrame = 0;
    
    text("YOU LOSE!", width/2, height/2 - 100);
    textSize(50);
    text("BRICKS: " + score, width/2, height/2);
  }
  
  //restart button
  tactileRect(250, 600, 200, 100, white, yellow, darkGreen);
  fill(white);
  textSize(30);
  text("Restart", 350, 650);
  
  //exit button
  tactileRect(550, 600, 200, 100, white, yellow, darkGreen);
  fill(white);
  textSize(30);
  text("Exit", 650, 650);
  
}

void gameoverClicks() {
  //click restart or exit
  if (mouseX > 250 && mouseX < 450 && mouseY > 600 && mouseY < 700) {
    mode = INTRO;
  } else if (mouseX > 550 && mouseX < 750 && mouseY > 600 && mouseY < 700) {
    exit(); 
  }
  
}
