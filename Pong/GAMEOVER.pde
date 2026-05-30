void gameover() {
  textSize(100);
 
  // display winner and background
  if (leftscore > rightscore) {
    background(pink);
    text("PINK WINS", 400, 250);
  } else {
    background(lightGreen); 
    text("GREEN WINS", 400, 250);
  }
  
  // display score
  fill(black);
  text(leftscore + " - " + rightscore, 400, 350);
  
  // restart button
  textSize(30);
  strokeWeight(10);
  tactileRect(150, 500, 200, 100, black, yellow, white);
  fill(black);
  text("Restart", 250, 550);
  
  //exit button
  tactileRect(450, 500, 200, 100, black, yellow, white);
  fill(black);
  text("Exit", 550, 550);
}

void gameoverClicks() {
  // click restart or exit
  if (mouseY > 500 && mouseY < 600) {
    if (mouseX > 150 && mouseX < 350) {
      mode = INTRO; 
    } else if (mouseX > 450 && mouseX < 650) {
      exit();
    }
  }
}
