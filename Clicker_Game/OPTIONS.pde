void options() {
  background(darkGreen);
  strokeWeight(5);
  targetSize = map(sliderY, 550, 750, 50, 200); 
 
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
  
  // preview
  target(400, 650);
  
  // done button
  tactileRect(550, 600, 200, 100, black, yellow, white);
  textSize(50);
  fill(black);
  text("DONE", 650, 650);
}

void optionsClicks() {
  controlSlider();
  
  // clicking an option
  if ( dist(mouseX, mouseY, 200, 350) < 150 ) {
    orcaOn = !orcaOn;
  }
  if ( dist(mouseX, mouseY, 600, 350) < 150) {
    rabbitOn = !rabbitOn;
  }
  
  // clicking done button
  if (mouseX > 550 && mouseX < 750 && mouseY > 600 && mouseY < 700) {
    mode = INTRO; 
  }
}

void optionsDragged() {
  controlSlider();
}
