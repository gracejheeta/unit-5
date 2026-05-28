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
  
}

void gameoverClicks() {
}
