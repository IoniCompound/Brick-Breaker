void gameover() {
  background(orange); 
  if (score>35){
  gameWin();
  }
  else if(score<36){
  gameLoss();
  }
}
void gameOverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 550) {
  setup();   
  mode= INTRO;}
}

void gameWin(){
background(orange);
  fill(red);
  rect(400, 450, 100, 100);
  fill(0);
  textSize(15);
  text("New game?", 405,450);
  textSize(40);
  text("GAME OVER! YOU WON ", 400,325);
  textSize(25);
//score+highscore
  text("your score: "+ score, width/2, height/2);
//  text("highscore "+ highscore, width/2,height/3);
//  text("highscore "+ highscore, width/2,height/3);
  
}void gameLoss(){

  background(orange);
  fill(red);
  rect(400, 450, 100, 100);
  fill(0);
  textSize(15);
  text("New game?", 405,450);
  textSize(40);
  text("GAME OVER! YOU LOST ", 400,325);
  textSize(25);
//score+highscore
  text("your score: "+ score, width/2, height/2);
//  text("highscore "+ highscore, width/2,height/3);



}
