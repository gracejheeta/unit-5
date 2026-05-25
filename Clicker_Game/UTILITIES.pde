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
  //target values
  x = width/2;
  y = height/2;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //game values
  score = 0;
  lives = 3;
  
  // sound
  music.rewind();
}

void target(float x, float y) {
  stroke(black);
  fill(white);
  circle(x, y, targetSize);
  if (orcaOn) {
    rabbitOn = false;
    image(orca, x - targetSize/2, y - targetSize/2, targetSize - 5, targetSize - 5); 
  } else if (rabbitOn) {
    orcaOn = false;
    image(rabbit, x - targetSize/3, y - targetSize/3, targetSize * 2/3 - 5, targetSize * 2/3 - 5); 
  }
}

void controlSlider() {
  if (mouseX >= 50 && mouseX <= 150 && mouseY >= 550 && mouseY <= 750) {
    sliderY = mouseY; 
  }
}
