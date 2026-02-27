/*
Michael Guo
2-1
Feb 26

The hope, peace, is illustrated 24 hours in this animation

*/

int x;
int y;
int t;

void setup(){
  size(600, 600);
  t=0;
}

void draw(){
  background(0, 191, 255);
  noStroke();
  fill(255, 255, 0);
  circle(0, 0, 75);
  fill(0, 128, 0);
  rect(0, 450, 600, 150);
  fill(169);
  rect(0, 400, 600, 50);
  fill(211);
  rect(0, 300, 600, 100);
}
