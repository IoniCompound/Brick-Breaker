void game() {
  if (score>1){
  mode= GAMEOVER;
  }
  background(0,0,0);
  ball();
  paddle();
  pauseButton();
  Brickers();
  
if (highscore<=score){
  highscore=score;}
  fill(white);
  text("your score: "+ score, width-90, height-550);
  fill(red);
  textSize(25);
  text("Lives: "+ lives, width-60, height-520);
 // text("highscore "+ highscore, width-70,height-500);
 if (lives==0){
    mode=GAMEOVER;
  }
}

void gameClicks() { 
  if (mouseX > 0 && mouseX < width/32*3 && mouseY > 0 && mouseY < height/24*3) {
     mode= PAUSE;
  }
  
}

void ball (){
  fill(colorCurrent);
  ellipse(bx,by, ts ,ts);
  //moving the ball
  bx=bx+bvx;
  by=by+bvy; 
  //making it bounce off left/right walls
  if (bx<0||bx>width){
    bvx=-bvx;
  }
  //bounce off top/bottom
  if (by<0){
    bvy=-bvy;}
  if (by>height){
    lives=lives-1;
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;
  px=width/2;
  py=height+10;
  }
 
 if (dist(px,py,bx,by) <70){
  bvx=(bx-px)/10;
  bvy=(by-py)/10;
  }
}

void paddle (){
fill(colorCurrent);
//fill(255);
//rect(px,py,s,s);
  ellipse(px,py,s,s);
   if(rightKey) px=px+5;
   if (leftKey) px=px-5;

}
void pauseButton(){
  image(pause,0,0, width/32*3, height/24*3);
}
void Brickers(){
  int i=0;
  while (i<36){
  Brick b =myBricks.get(i);
  b.show();
  b.act();
  i=i+1;
  }
  if (score>35){
  gameWin();}
}
