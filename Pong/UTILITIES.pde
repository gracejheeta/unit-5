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

void reset() {
  // initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  // initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //reset score
  leftscore = 0;
  rightscore = 0;
}
