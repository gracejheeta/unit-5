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

void ballSpeed() {
  // choose ball speed
  vy = random(-5, 5);
  vx = random(1, 5);
    
  float i = random(0, 1);
  if (i < 0.5) {
    vx *= -1; 
  }
  
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
  ballSpeed();
  
  //reset score
  leftscore = 0;
  rightscore = 0;
  
  // initialize keyboard variables
  wkey = skey = upkey = downkey = false;
  
  //sound
  music.rewind();
}
