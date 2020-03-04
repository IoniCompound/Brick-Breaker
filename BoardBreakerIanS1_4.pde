//Ian S feb/march 2020 1-4

ArrayList<Brick> myBricks;
final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int OPTIONS=5;
int mode = INTRO;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause
int score, highscore, lives,gridx,gridy;
float bx, by, bvx, bvy; //ball variables
color red= color(189, 42, 51);
color orange= color(214, 170, 38);
color green= color(78, 118, 80);
color blue= color(81, 110, 196);
color purple= color(176, 37, 232);
color white= color(255);
//paddle variables 
float px, py, sliderX, thickness,s,ts;
//keyboard
boolean leftKey, rightKey;
PImage pause;
float re,g,b;
int o;
color colorCurrent;
void setup() {

  s=100;
  ts=20;
  colorCurrent=white;
  re= random(30,255);
  g= random(30,255);
  b= random(30,255);
  gridx=100;
  gridy=50;
  o=23;
  size(800, 600);
  myBricks=new ArrayList<Brick>(); 
  int i=0;
  while (i<36){
   myBricks.add( new Brick());
   gridx=gridx+75;
   if (gridx>750){
     gridx=100;
     gridy=gridy+75; 
   }
    i=i+1;
  }
  
  //ball
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;
  score=0;
  highscore=0;
  lives=3;
  pause=loadImage("pause.png");
  // paddle
  px=width/2;
  py=height+10;
}
//Bricks



void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else if (mode==OPTIONS){
   options();
  } else 
    println("?");
  }
