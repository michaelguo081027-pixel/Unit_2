/*
Michael Guo
2-1
Feb 26

The hope, peace, is illustrated 24 hours in this animation

*/

int x;
int y;
float t;
int vehicleX;

void setup(){
  size(600, 600);
  x=0;
  y=0;
  t=0;
  vehicleX=600;
}

void draw(){
  //background part
  background(0, 191, 255);
  noStroke();
  fill(255, 255, 0);
  fill(0, 128, 0);
  rect(0, 450, 600, 150);
  fill(169);
  rect(0, 400, 600, 50);
  fill(211);
  rect(0, 300, 600, 100);
  //moving part
  vehicle(vehicleX, 410);
  vehicleX = vehicleX-4;
  if (vehicleX < -600) {
    vehicleX = 700;
  }
}

void vehicle(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(0);
  circle(-50, 10, 30);
  circle(50, 10, 30);
  fill(220);
  circle(-50, 10, 15);
  circle(50, 10, 15);
  fill(65, 105, 225);
  rect(-30, -30, 60, 35);
  rect(-70, -30, 40, 25);
  rect(-100, -30, 30, 35);
  rect(30, -30, 40, 25);
  rect(70, -30, 10, 35);
  stroke(65, 105, 225);
  fill(0);
  rect(-30, -50, 70, 20);
  triangle(-30, -50, -30, -30, -60, -30);
  triangle(40, -50, 40, -30, 60, -30);
  fill(200);
  rect(-100, -20, 5, 10);
  fill(255, 165, 0);
  rect(-100, -10, 5, 5);
  rect(75, -10, 5, 5);
  fill(220, 20, 60);
  rect(75, -20, 5, 10);
  popMatrix();
}
