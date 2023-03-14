class Alien {
int x, y;
int status;
PImage normalImg, explodeImg;
boolean forward = true;
boolean backward = false;
boolean down = false;
boolean hit = false;
boolean alienDead = false;
int height = 30;
int left, right, top, bottom;
boolean bomb = false;
int r;
int l = 0;

Alien (int xpos, int ypos, PImage okImg, PImage exImg){
x = xpos;
y = ypos;
status = ALIEN_ALIVE;
normalImg=okImg;
explodeImg=exImg;
left = x;
right = x+30;
top = y;
bottom = y+30;
}

void move(){
left = x;
right = x+30;
top = y;
bottom = y+30;
  if(forward){
    x++;
    if(x==370){
      forward = false;
      down = true;
    }
  }
  if(backward){
    x--;
    if(x==0){
      backward = false;
      down = true;
    }
  }
  if (down){
     height = height-1;
     y++;
     if(height==0){
       down = false;
       height = 30;
       if(x==0){
         forward = true;
       }
       if(x==370){
         backward = true;
       }
     }
  }
}

void draw(){
if(status>=80){
  alienDead = true;
}
if(status==ALIEN_ALIVE)
image(normalImg, x, y);
else if(alienDead==false){
image(explodeImg, x, y);
status++;
}
// otherwise dead, don't draw anything
}
void die(){
if(hit){
status++;
}
}

boolean getBomb(){
  r = int(random(0,200));
  if(r==100){
    bomb = true;
  }
  return bomb;
}

boolean getBomb2(){
  if(l==1){
    return false;
  }
  if(r==100){
    l++;
    return true;
  }
  else{
    return false;
  }
  
}

}
