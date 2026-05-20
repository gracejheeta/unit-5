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
