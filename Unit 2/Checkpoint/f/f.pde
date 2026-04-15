/*
Michael Guo
2-1
Feb 19
animation f
*/

int y;

void setup() {
  size(600, 600);
  y = 0;
  strokeWeight(5);
}

void draw() {
  background(255);
  circle(150, y, 200);
  circle(450, 600-y, 200);
  y = y + 1;
  if(y > 700) {
    y = -100;
  }
}
