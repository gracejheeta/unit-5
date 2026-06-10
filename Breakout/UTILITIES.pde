void tactileRect(int x, int y, int w, int h, color normalStroke, color newStroke, color Fill) {
  
  // if mouse is inside rect
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(newStroke);
  } else {
    stroke(normalStroke);
  }
  
  fill(Fill);
  rect(x, y, w, h);
}

void tactileCircle(int x, int y, int d, color normalStroke, color newStroke, color Fill) {
  // if mouse is inside circle
  if ( dist(mouseX, mouseY, x, y) < d/2 ) {
    stroke(newStroke);
  } else {
    stroke(normalStroke);
  }
  
  fill(Fill);
  circle(x, y, d);
}

void resetBall() {
  ballX = width/2;
  ballY = 3 * height/4;
  vx = 0;
  vy = 5;
}

void reset() {
  //initialize paddles
  paddleX = width/2;
  paddleY = height;
  
  //initialize balls
  resetBall();
  
  // initialize game variables
  score = 0;
  lives = 3;
  timer = 100;
  
  for (int i = 0; i < numBricks; i ++) {
    alive[i] = true;
  }
}
