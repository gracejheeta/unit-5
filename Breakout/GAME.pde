void game() {
  background(cream);
  strokeWeight(0);
  timer --;

  // display score and lives
  textFont(lemon);
  textSize(20);
  fill(black);
  text("Bricks: " + score, 75, 20);
  text("Lives: " + lives, 200, 20);

  //bricks
  for (int i = 0; i < numBricks; i ++) {
    if (alive[i]) manageBrick(i);
  }

  //paddle
  fill(darkBlue);
  circle(paddleX, paddleY, paddleD);

  // move paddle
  if (leftkey == true) paddleX -= 5;
  if (rightkey == true) paddleX += 5;
  if (paddleX <= paddleD/2) paddleX = paddleD/2;
  if (paddleX >= width - paddleD/2) paddleX = width - paddleD/2;

  //ball
  circle(ballX, ballY, ballD);

  //move ball
  if (timer < 0) {
    ballX += vx;
    ballY += vy;
  }

  //ball bouncing off walls except bottom
  if ( (ballX > width - ballD/2) || (ballX < ballD/2) ) vx *= -1;
  if ( ballY < ballD/2 ) vy *= -1;
  if ( ballY > height - ballD/2 ) {
    resetBall();
    lives -= 1;
    timer = 100;
  }

  //collision with ball and paddle
  if ( dist(ballX, ballY, paddleX, paddleY) < (ballD/2 + paddleD/2) ) {
    vx = (ballX - paddleX)/15;
    vy = (ballY - paddleY)/15;
  }
}

void manageBrick(int i) {
  if (bricky[i] == 100) fill(red);
  else if (bricky[i] == 200) fill(orange);
  else if (bricky[i] == 300) fill(yellow);
  else if (bricky[i] == 400) fill(lightGreen);
  else if (bricky[i] == 500) fill(lightBlue);
  else if (bricky[i] == 600) fill(magenta);

  circle(brickx[i], bricky[i], brickd);

  //collisions with ball and brick
  if ( dist(brickx[i], bricky[i], ballX, ballY) < (brickd/2 + ballD/2) ) {
    vx = (ballX - brickx[i])/10;
    vy = (ballY - bricky[i])/10;
    score ++;
    alive[i] = false;
  }
  
  //making sure ball isn't horizontal forever
  
  if (vy > -0.5 && vy < 0.5) {
    vy *= 5;
  }
  
  // go to gameover
  if (lives == 0) mode = GAMEOVER;
  else if (score == numBricks) mode = GAMEOVER;
  
}

void gameClicks() {
}
