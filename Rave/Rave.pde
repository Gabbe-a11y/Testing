float xpos;
float ypos;
float xspeed=2;
float yspeed=3;
float size = 50;
void setup(){
  size(500, 500);
  xpos = width/2;
  ypos = width/2;
  xspeed = random(1,5);
  yspeed = random(1,5);
}
void draw(){
  background(100);
  renderbounce();
 
}
void renderbounce(){
  if(xpos > width-(size/2)|| xpos < (size/2)){
    xspeed = xspeed *(-1);
  }
  if(ypos > height-(size/2)|| ypos < (size/2)){
    yspeed = yspeed * (-1);
  }
  if(mousePressed){
    fill(random(0,250),random(0,250),random(0,250));
  } else {
    fill(0);
  }
  textSize(25);
  text("Tryck med musen", width/2-80, height/2);
  circle(xpos, ypos, size);
  xpos = xpos + xspeed;
  ypos = ypos + yspeed;
}
