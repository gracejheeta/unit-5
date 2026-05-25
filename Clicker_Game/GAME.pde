void game() {
  background(lightGreen);
  music.play();

  //pause button
  tactileCircle(750, 50, 50, black, red, yellow);
  stroke(black);
  line(745, 40, 745, 60);
  line(755, 40, 755, 60);

  // display target
  target(x, y);

  // moving
  x += vx;
  y+= vy;

  // bouncing
  if (x <= targetSize/2 || x >= width - targetSize/2) {
    vx *= -1;
  }
  if (y <= targetSize/2 || y >= height - targetSize/2) {
    vy *= -1;
  }

  // Display score and lives
  textSize(20);
  text("Score: " + score, 60, 20);
  text("Lives: " + lives, 180, 20);
}

void gameClicks() {
  if ( dist(mouseX, mouseY, x, y) < targetSize/2) {
    score ++;
    success.rewind();
    success.play();
    vx *= 1.05;
    vy *= 1.05;
  } else if ( dist(mouseX, mouseY, 750, 50) < 25) {
    mode = PAUSE;
    music.pause();
  } else {
    lives --;
    failure.rewind();
    failure.play();
    if (lives == 0) mode = GAMEOVER;
  }
}
