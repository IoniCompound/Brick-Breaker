
class Brick {
  
//1 Instance variables
  float x,y;
  int hp;
  color c;
//2 Constructor
  Brick(){
     x=gridx;
     y=gridy;
    
     hp=Math.round(random(1,5));
}
//3  Behaviour functions
   void act() {
   if (hp>0 &&dist(x,y,bx,by)<35){
      bvx=(bx-x)/7;
      bvy=(by-y)/7;
     hp=hp-1;
     if (hp<1){
     score=score+1;
     }
   }
     
   }
   
   void show(){
    if (hp>0){
     fill(c);
     ellipse(x,y,50,50);
    }
    if (hp>=5){
    c=orange;
    }
    else if (hp>=4){
    c=purple;
    }
    else if (hp>=3){
    c=red;
    }
    else if (hp>=2){
    c=blue;
    }
    else if (hp>=1){
    c=green;
    }
   }


}
