void tactileRect(int x, int y, int w, int h, color stroke, color newStroke) {
  // if mouse is inside rect
  if (mouseX > x && mouseX < x + w && mouseX > y && mouseX < y + h) {
    stroke(newStroke); 
  } else {
    stroke(stroke); 
  }
}
