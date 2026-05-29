void game() {
  background(darkBlue);
  noStroke();
 
  // center line
  strokeWeight(5);
  stroke(0);
  line(width/2, 0, width/2, height);

  //paddles
  fill(pink);
  circle(leftx, lefty, leftd);
  fill(lightGreen);
  circle(rightx, righty, rightd);

  // move paddles
  if (wkey == true) lefty -= 5;
  if (skey == true) lefty += 5;
  
  if (AI == false) {
    if (upkey == true) righty -= 5;
    if (downkey == true) righty += 5;
  } else {
    
    if (ballx > width/2) {
      if (bally > righty + 100) {
        righty += 5; 
      }
      if (bally < righty - 100) {
        righty -= 5;       
      }
    }
  }
  
  // limits
  if (lefty <= 200) {
    lefty = 200;
  }
  if (lefty >= height - 200) {
    lefty = height - 200; 
  }
  if (righty <= 200) {
    righty = 200; 
  }
  if (righty >= height - 200) {
    righty = height - 200; 
  }

  // ball
  fill(white);
  circle(ballx, bally, balld);

  //move ball
  if (timer < 0) {
    ballx += vx;
    bally += vy;
  } else {
    vx = random(-5, 5);
    vy = random(-5, 5);
  }
  
  if (bally <= 50) {
    bally = 50; 
  }
  if (bally >= 750) {
    bally = 750; 
  }
  
  //scoreboard
  textSize(50);
  fill(pink);
  text(leftscore, width/4, 100);
  fill(lightGreen);
  text(rightscore, width * 3/4, 100);
  timer --;
  
  // bouncing off walls
  if (bally <= balld/2 || bally >= height - balld/2) {
    vy *= -1.05;
  }

  //scoring
  if (ballx < 0) {
    rightscore ++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }
  
  if (ballx > width) {
    leftscore ++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }

  // collisions with ball and paddle
  if ( dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2) {
    vx = (ballx - leftx)/20;
    vy = (bally - lefty)/20;
  }
  if ( dist(ballx, bally, rightx, righty) < balld/2 + rightd/2) {
    vx = (ballx - rightx)/20;
    vy = (bally - righty)/20;
  }
  
  if (leftscore == 3 || rightscore == 3) {
    mode = GAMEOVER; 
  }
  
}
  
void gameClicks() {
}
