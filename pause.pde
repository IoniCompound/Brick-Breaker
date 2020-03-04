void pause() {
  fill(255);
  textSize(40);
  text("Pause", width/2, height/2);
    textSize(20);
}

void pauseClicks() {
  
  if (mouseX > 0 && mouseX < width/32*3 && mouseY > 0 && mouseY < height/24*3) {
     mode= GAME;
  }
}
