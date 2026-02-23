/*
Michael Guo
2-1
Feb 19
animation d
*/

int x;

void setup() {
  size(600, 600);
  x = 600;
  strokeWeight(5);
}

void draw() {
  background(255);
  circle(x, 300, 200);
  x = x - 1;
  if(x < -100) {
    x = 700;
  }
}
