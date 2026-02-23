/*
Michael Guo
2-1
Feb 19
animation c
*/

int d;

void setup() {
  size(600, 600);
  d = 0;
  strokeWeight(5);
}

void draw() {
  background(255);
  circle(300, 300, d);
  d = d + 1;
  if(d > 850) {
    d = 0;
  }
}
