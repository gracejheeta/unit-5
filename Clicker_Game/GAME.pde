void game() {
  background(lightGreen);
  
  // display target
  fill(darkBlue);
  circle(x, y, d);
  
  // moving
  x += vx;
  y+= vy;
  
  // bouncing
  if (x <= d/2 || x >= width - d/2) {
    vx *= -1.1;
  }
  if (y <= d/2 || y >= height - d/2) {
    vy *= -1.1; 
  }
  if (vx >= 10 || vx <= -10) vx = random(-5, 5);
  if (vy >= 10 || vy <= -10) vy = random(-5, 5);
  
  // Display score and lives
  textSize(20);
  text("Score: " + score, 60, 20);
  text("Lives: " + lives, 180, 20);
}

void gameClicks() {
  //mode = GAMEOVER;
  if ( dist(mouseX, mouseY, x, y) < d/2) {
     score ++;
     success.rewind();
     success.play();
  } else {
    lives --;
    if (lives == 0) mode = GAMEOVER; 
  }
}
