void pause() {
  // play button
  tactileCircle(750, 50, 50, black, red, yellow);
  fill(black);
  stroke(black);
  triangle(740, 40, 740, 60, 760, 50);
}

void pauseClicks() {
  if ( dist(mouseX, mouseY, 750, 50) < 25) {
    mode = GAME; 
  }
}
