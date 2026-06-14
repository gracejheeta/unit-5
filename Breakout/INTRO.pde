void intro() {
  reset();
  background(darkBlue);
  
  //display title
  textSize(100);
  text("BREAKOUT", 500, 450);
  textSize(50);
  text("Click anywhere to start!", 500, 550);
}

void introClicks() {
  mode = GAME;
}
