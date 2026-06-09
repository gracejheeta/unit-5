void pause() {
  // play button
  //music.pause();
  strokeWeight(5);
  tactileCircle(950, 50, 50, black, red, yellow);
  fill(black);
  stroke(black);
  triangle(940, 40, 940, 60, 960, 50);
}

void pauseClicks() {
  if ( dist(mouseX, mouseY, 950, 50) < 25) {
    mode = GAME; 
  }
}
