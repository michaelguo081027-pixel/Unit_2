/*
2-1
Feb 25
Michael Guo
Monster Animation
*/

int x;
int y;
int angle;
int monsterX, monsterVx;
int monsterAngle, monsterCangle;

void setup() {
  size(900, 600);
  monsterX = 0;
  monsterAngle = 0;
  monsterVx = 5;
  monsterCangle = 5;
}

void draw() {
  background(200);
  monster(monsterX, 300, monsterAngle);
  monsterX = monsterX + monsterVx;
  monsterAngle = monsterAngle + monsterCangle;
  if(monsterX > 750) {
    monsterVx = -5;
    monsterCangle = -5;
  }
  if(monsterX < 150) {
    monsterVx = 5;
    monsterCangle = 5;
  }
}

void monster(int x, int y, int angle) {
  pushMatrix();
  translate(x, y);
  rotate(radians(angle));
  stroke(0);
  fill(#ddd1ca);
  strokeWeight(8);
  ellipse(0, 0, 300, 300);
  fill(255);
  strokeWeight(4);
  ellipse(0-90, 0-80, 50, 50);
  ellipse(0+90, 0-80, 50, 50);
  fill(#ee1b69);
  ellipse(0, 0+25, 275, 175);
  noStroke();
  fill(0);
  rect(0-135, 0-25, 270, 100, 1000);
  fill(255);
  triangle(0-100, 0+80, 0-60, 0+90, 0-80, 0+50);
  triangle(0-50, 0+90, 0-10, 0+95, 0-30, 0+60);
  triangle(0-75, 0-40, 0-35, 0-55, 0-55, 0);
  triangle(0+75, 0-40, 0+35, 0-55, 0+55, 0);
  triangle(0+50, 0+90, 0+10, 0+95, 0+30, 0+60);
  triangle(0+100, 0+80, 0+60, 0+90, 0+80, 0+50);
  popMatrix();
}
