void options() {
  background(darkGreen);
  strokeWeight(5);
  
  // display options
  fill(0);
  textSize(100);
  text("OPTIONS", 400, 100);
  
  //orca
  tactileCircle(200, 350, 300, black, yellow, white);
  image(orca, 50, 200, 300, 300);
  
  //rabbit
  tactileCircle(600, 350, 300, black, yellow, white);
  image(rabbit, 500, 250, 200, 200);
  
  //slider
  stroke(black);
  strokeWeight(10);
  line(100, 550, 100, 750);
  strokeWeight(5);
  
  if (mouseX >= 50 && mouseX <= 150 && mouseY >= 550 && mouseY <= 750) {
    stroke(yellow); 
  }
  circle(100, sliderY, 50);
}

void optionsClicks() {
  controlSlider();
}

void optionsDragged() {
  controlSlider();
}
