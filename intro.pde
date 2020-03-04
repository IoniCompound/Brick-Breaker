void intro() {
rectMode(CENTER);
  background(255);
   fill(0);
  textSize(72);
  textAlign(CENTER,CENTER);
  text("Brick breaker", 400, 300);
  fill(0);
  textSize(18);
  rect(width-50, height-25, 100,50);
  fill(255);
  text("options",width-50, height-25);
//options page
  fill(255);
//  rect(width-50, height-25, 100,50);
//  fill(0);
 textSize(18);
 // text("Options", width-50, height-25);
  //game start
  fill(255);
  rect(400, 450, 100, 100);
  fill(0);
  text("Start", 400,450);

}

void introClicks() {
 if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 550) {
    mode = GAME;
    }
    
    if(mouseX>width-100 && mouseX< width && mouseY>height-50&& mouseY<height){
  mode=OPTIONS;
  }


}
