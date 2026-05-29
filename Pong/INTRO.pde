void intro() {
  background(lightBlue);
  reset();
  
  //one or two player buttons
  strokeWeight(5);
  tactileRect(150, 500, 200, 100, black, yellow, orange);
  tactileRect(450, 500, 200, 100, black, yellow, orange);
  
  fill(black);
  textSize(30);
  text("ONE PLAYER", 250, 550);
  text("TWO PLAYER", 550, 550);
}

void introClicks() {
  mode = GAME;
  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
    AI = true;
  } else {
    AI = false; 
  }
}
