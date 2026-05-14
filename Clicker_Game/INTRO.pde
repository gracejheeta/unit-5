void intro() {
  background(white);
  
  // Start button
  tactileRect(300, 300, 200, 100, black, yellow);
  strokeWeight(5);
  rect(300, 300, 200, 100);
}

void introClicks() {
  // if mouse is inside start button
  if (mouseX > 300 && mouseX < 500 && mouseY > 300 && mouseY < 400) {
    mode = GAME;
  }
}
