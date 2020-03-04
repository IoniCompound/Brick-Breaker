void options(){
  background(re,g,b);
  s = map(sliderX, 200, 600, 70, 100);
  ts = map(sliderX, 200, 600, 10, 40);
  strokeWeight(s);
 
//paddle
strokeWeight(5);
fill(colorCurrent);
ellipse(px,py,s,s);
//rect(px, py, s,s);
//ball

ellipse(bx,by, ts ,ts);


  //slider
  stroke(0);
  strokeWeight(2);
  line (200,50, 600, 50);
  fill(255);
  ellipse(sliderX, 50, 50, 50);
    if (dist(mouseX, mouseY, sliderX, 50) <=25 && mousePressed) {
    sliderX=mouseX;
  }

  if (sliderX <200) {
    sliderX=200;
  } 
  if (sliderX >600) {
    sliderX=600;
  }
  
  
  
  //buttons
  noStroke();
  fill(red);
  ellipse(100, 125, 50, 50);
  fill(orange);
  ellipse(200, 125, 50, 50);
  fill(green);
  ellipse(300, 125, 50, 50);
  fill(purple);
  ellipse(400, 125, 50, 50);
  fill(blue);
  ellipse(500, 125, 50, 50);
  fill(0);
  ellipse(600, 125, 50, 50);
  strokeWeight(3);

  fill(255);
//  rect(0,height-25,150,50);
  fill(0);
  text("Menu", 25, height-25);
  fill(255);
//  rect(300,500, 100, 100);
  fill(0);
  text("play",400,550);
}
void optionsClicks(){
  if (mouseX > 0 && mouseX < 150 && mouseY > height-25 && mouseY < height) {
    mode = INTRO;}
    
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 600) {
     mode= GAME;}
     //cursor(CROSS);  } 
    
    //Color buttons switch
 
  if (dist(600, 125, mouseX, mouseY) <= 25) {
    colorCurrent=0;

  }
  if (dist(500, 125, mouseX, mouseY) <= 25) {
    colorCurrent=blue;

  }
  if (dist(400, 125, mouseX, mouseY) <= 25) {
    colorCurrent=purple;

  }
  if (dist(300, 125, mouseX, mouseY) <= 25) {
    colorCurrent=green;

  }
  if (dist(200, 125, mouseX, mouseY) <= 25) {
    colorCurrent=orange;

  }
  if (dist(100, 125, mouseX, mouseY) <= 25) {
  
    colorCurrent=red;
  }
  


}
