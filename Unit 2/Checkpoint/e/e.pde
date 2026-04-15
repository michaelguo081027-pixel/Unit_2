/*
Michael Guo
2-1
Feb 19
animation e
*/

int x;
int d;

void setup() {
  size(600, 600);
  x = 0;
  d = 0;
  strokeWeight(5);
}

void draw() {
  background(255);
  circle(x, 300, d);
  x = x + 5;
  d = d + 1;
  if(x > 700) {
    x = 0;
    d = 0;
  }
}
