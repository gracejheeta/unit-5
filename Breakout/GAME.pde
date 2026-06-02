void game() {
  background(cream);
  
  //bricks
  int tempx = 100;
  int tempy = 100;
  for (int i = 0; i < numBricks; i ++) {
    brickx[i] = tempx;
    bricky[i] = tempy;
    tempx += 100;
    
     if (tempx >= width) {
        tempy += 100;
        tempx = 100;
      }
    
  }
  
  for (int i = 0; i < numBricks; i ++) {
    if (bricky[i] == 100) fill(red);
    else if (bricky[i] == 200) fill(orange);
    else if (bricky[i] == 300) fill(yellow);
    else if (bricky[i] == 400) fill(lightGreen);
    else if (bricky[i] == 500) fill(lightBlue);
    
    circle(brickx[i], bricky[i], brickd);
  }
  
  
  //paddle
  circle(paddleX, paddleY, paddleD);
  
  // move paddle
  if (leftkey == true) paddleX -= 5;
  if (rightkey == true) paddleX += 5;
  
  //ball
  circle(ballX, ballY, ballD);
  
  //move ball
  ballX += vx;
  ballY += vy;
  
  //ball bouncing off walls except bottom
  if ( (ballX > width - ballD/2) || (ballX < ballD/2) ) vx *= -1;
  if ( ballY < ballD/2 ) vy *= -1;
  if ( ballY > height - ballD/2 ) lives -= 1;
  
  //collision with ball and paddle
  if ( dist(ballX, ballY, paddleX, paddleY) < ballD/2 + paddleD/2) {
    vx = (ballX - paddleX)/15;
    vy = (ballY - paddleY)/15;
  }
  
}

void gameClicks() {
  
}
