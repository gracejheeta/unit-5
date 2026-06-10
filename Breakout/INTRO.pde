void intro() {
  reset();
  background(255);
  
  //display title
  fill(0);
  textSize(100);
  text("BREAKOUT", width/2, height/2);
}

void introClicks() {
  mode = GAME;
}
