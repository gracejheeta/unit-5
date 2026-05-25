void intro() {
  background(orange);
  reset();
 
  textFont(lemon);
  textSize(90);
  text("CLICKER GAME", 400, 200);
  
  // Start button
  tactileRect(150, 450, 200, 100, black, yellow, lightBlue);
  fill(black);
  textSize(30);
  text("START", 250, 500);
  
  // Options button
  tactileRect(450, 450, 200, 100, black, yellow, lightBlue);
  fill(black);
  text("OPTIONS", 550, 500);
}

void introClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
    mode = GAME;
  } else if (mouseX > 450 && mouseX < 650 && mouseY > 450 && mouseY < 550) {
    mode = OPTIONS; 
  }
}
