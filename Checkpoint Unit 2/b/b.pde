/*
Michael Guo
2-1
Feb 19
animation b
*/

int x;
int y;

void setup() {
  size(600, 600);
  x = 0;
  y = 0;
  strokeWeight(5);
}

void draw() {
  background(255);
  circle(x, y, 200);
  x = x + 1;
  y = y + 1;
  if(y > 700) {
    x = -100;
    y = -100;
  }
}
