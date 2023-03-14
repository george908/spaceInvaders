class Player {
int xpos; int ypos;
int top;
int bottom;
int left;
int right;
color paddlecolor = color(50);
Player(int screen_y)
{
xpos=SCREENX/2;
ypos=screen_y;
top = ypos;
bottom = ypos + PADDLEHEIGHT;
left = xpos - (PADDLEWIDTH/2);
right = xpos + (PADDLEWIDTH/2);
}
void move(int x){
top = ypos;
bottom = ypos + PADDLEHEIGHT;
left = xpos - (PADDLEWIDTH/2);
right = xpos + (PADDLEWIDTH/2);
if(x>SCREENX-PADDLEWIDTH) xpos = SCREENX-PADDLEWIDTH;
else xpos=x;
}
void draw()
{
fill(paddlecolor);
rect(xpos, ypos, PADDLEWIDTH, PADDLEHEIGHT);
}
}
