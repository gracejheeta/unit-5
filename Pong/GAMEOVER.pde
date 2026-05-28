void gameover() {
  textSize(100);
  textFont(lemon);
 
  if (leftscore > rightscore) {
    background(pink);
    text("PINK WINS", 400, 300);
  } else {
    background(lightGreen); 
    text("GREEN WINS", 400, 300);
  }
  
  fill(black);
  text(leftscore + " - " + rightscore, 400, 400);
  
  tactileRect(300, 500, 200, 100, black, darkGreen, white);
  textSize(30);
  strokeWeight(10);
  fill(black);
  text("RESTART", 400, 550);
}

void gameoverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    mode = INTRO; 
  }
}
