void intro() {
  background(lightBlue);
  reset();
  
  // Display name
  textSize(150);
  text("PONG", 400, 250);
  
  //one or two player buttons
  tactileRect(100, 500, 250, 125, black, yellow, orange);
  tactileRect(450, 500, 250, 125, black, yellow, orange);
  
  fill(black);
  textSize(30);
  text("ONE PLAYER", 225, 562);
  text("TWO PLAYER", 575, 562);
}

void introClicks() {
  mode = GAME;
  
  // choose one or two player
  if (mouseX > 100 && mouseX < 350 && mouseY > 500 && mouseY < 625) {
    AI = true;
  } else {
    AI = false; 
  }
}
