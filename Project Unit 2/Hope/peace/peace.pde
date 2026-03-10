/*
Michael Guo
2-1
Feb 26


*/

int x;
int y;
int t;
int vehicleX;
int cloudX1, cloudX2;
float personX;
float angle, Vangle;

void setup(){
  size(600, 600);
  x=0;
  y=0;
  t=0;
  vehicleX=600;
  cloudX1=0;
  cloudX2=0;
  angle=0;
  Vangle=0.1;
}

void draw(){
  //background part
  background(0, 191, 255);
  noStroke();
  fill(255, 165, 0);
  circle(450, 30, 50);
  fill(238, 232, 170);
  rect(0, 525, 600, 75);
  fill(0, 128, 0);
  rect(0, 450, 600, 75);
  fill(100);
  rect(0, 400, 600, 50);
  fill(255);
  triangle(50, 425, 75, 410, 75, 440);
  rect(75, 417.5, 100, 15);
  fill(200);
  rect(0, 300, 600, 100);
  stroke(2);
  fill(238, 232, 170);
  rect(25, 125, 150, 250);
  fill(65, 105, 225);
  rect(35, 150, 50, 50);
  rect(115, 150, 50, 50);
  rect(35, 225, 50, 50);
  rect(115, 225, 50, 50);
  rect(35, 300, 50, 50);
  rect(115, 300, 50, 50);
  fill(70, 130, 180);
  rect(225, 175, 150, 200);
  line(225, 225, 375, 225);
  line(225, 275, 375, 275);
  line(225, 325, 375, 325);
  line(275, 175, 275, 375);
  line(325, 175, 325, 375);
  line(300, 175, 300, 100);
  fill(255);
  rect(300, 100, 60, 40);
  circle(330, 120, 30);
  line(330, 105, 330, 135);
  line(330, 120, 320, 130);
  line(330, 120, 340, 130);
  fill(210, 105, 30);
  rect(425, 125, 150, 250);
  fill(139, 69, 19);
  rect(475, 300, 50, 75);
  fill(30, 144, 255);
  rect(475, 225, 50, 50);
  rect(475, 150, 50, 50);
  stroke(3);
  fill(0);
  line(50, 500, 50, 550);
  circle(50, 500, 25);
  line(50, 530, 75, 520);
  line(50, 530, 80, 530);
  line(50, 550, 45, 570);
  line(50, 550, 60, 565);
  line(200, 500, 200, 550);
  circle(200, 500, 25);
  line(200, 530, 175, 520);
  line(200, 530, 170, 530);
  line(200, 550, 195, 565);
  line(200, 550, 210, 570);
  //moving part
  //cloud
  cloud(cloudX1, 50);
  cloud(cloudX2, 75);
  cloudX1=cloudX1+2;
  cloudX2=cloudX2+3;
  if(cloudX1>750){
    cloudX1=-150;
  }
  if(cloudX2>750){
    cloudX2=-150;
  }
  //ball
  ball(125, 500);
  angle=angle+Vangle;
  if(angle>3.3){
    Vangle=-0.1;
  }
  if(angle<-0.3){
    Vangle=0.1;
  }
  //person
  person(personX, 350);
  personX=personX+0.25;
  if(personX>650){
    personX=-50;
  }
  //car
  vehicle(vehicleX, 410);
  vehicleX = vehicleX-5;
  if (vehicleX < -1000) {
    vehicleX = 1000;
  }
}

void person(float x, int y){
  t=t+1;
  if(t<20){
    drawPersonR(x, y);
  }
  if(t>=20){
    drawPersonL(x, y);
  }
  if(t==40){
    t=0;
  }
}

void drawPersonR(float x, int y){
  pushMatrix();
  translate(x, y);
  strokeWeight(3);
  fill(0);
  line(0, -20, 0, 20);
  circle(0, -20, 30);
  line(-10, 10, 0, 0);
  line(-10, 10, 0, 15);
  line(10, 10, 0, 0);
  line(10, 10, 20, 0);
  line(0, 20, 20, 30);
  line(20, 30, 20, 40);
  line(0, 20, -20, 40);
  popMatrix();
}
  
void drawPersonL(float x, int y){
  pushMatrix();
  translate(x, y);
  strokeWeight(3);
  fill(0);
  line(0, -20, 0, 20);
  circle(0, -20, 30);
  line(-20, 5, 0, 0);
  line(-20, 5, -20, 15);
  line(0, 0, 5, 15);
  line(5, 15, 15, 20);
  line(0, 20, 20, 30);
  line(20, 30, 0, 40);
  line(0, 20, -20, 40);
  popMatrix();
}

void vehicle(int x, int y) {
  pushMatrix();
  translate(x, y);
  stroke(0);
  strokeWeight(2);
  fill(0);
  circle(-50, 10, 30);
  circle(50, 10, 30);
  fill(220);
  circle(-50, 10, 15);
  circle(50, 10, 15);
  fill(65, 105, 225);
  rect(-30, -30, 60, 35, 0, 0, 10, 10);
  rect(-70, -30, 40, 25);
  rect(-100, -30, 30, 35, 10, 0, 10, 10);
  rect(30, -30, 40, 25);
  rect(70, -30, 10, 35, 0, 10, 10, 10);
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

void cloud(int x, int y) {
  pushMatrix();
  translate(x, y);
  noStroke();
  fill(255);
  ellipse(0, 0, 150, 50);
  ellipse(-70, 15, 75, 25);
  ellipse(50, 20, 80, 20);
  ellipse(90, 10, 60, 30);
  popMatrix();
}

void ball(int x, int y){
  pushMatrix();
  translate(x, y);
  rotate(angle);
  stroke(2);
  fill(255, 0, 0);
  circle(-30, 0, 50);
  fill(0, 255, 0);
  ellipse(-30, 0, 30, 50);
  fill(0, 0, 255);
  ellipse(-30, 0, 10, 50);
  popMatrix();
}
