void game() {
  background(darkBlue);
  
  //paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  // move paddles
  if (wkey == true) lefty -= 5;
  if (skey == true) lefty += 5;
  if (upkey == true) righty -= 5;
  if (downkey == true) righty += 5;
  
  // ball
  circle(ballx, bally, balld);
  ballx += vx;
  bally += vy;
  
  // bouncing off walls
  if (ballx <= balld/2 || ballx >= width - balld/2) {
    vx *= -1;
  }
  if (bally <= balld/2 || bally >= height - balld/2) {
    vy *= -1;
  }
  
  // collisions with ball and paddle
  if ( dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2) {
    vx = (ballx - leftx)/20;
    vy = (bally - lefty)/20;
  }
  
}

void gameClicks() {
  
}
