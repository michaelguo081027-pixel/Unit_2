/*
Michael Guo
2-1
Feb 26


*/

int x;
int y;
float t;
int vehicleX;
int cloudX;
float angle, Vangle;

void setup(){
  size(600, 600);
  x=0;
  y=0;
  t=0;
  vehicleX=600;
  cloudX=0;
  angle=0;
  Vangle=0.1;
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
  vehicle(vehicleX, 410);
  vehicleX = vehicleX-4;
  if (vehicleX < -600) {
    vehicleX = 700;
  }
  cloud(cloudX, 50);
  cloudX=cloudX+2;
  if(cloudX>750){
    cloudX=-150;
  }
  ball(125, 500);
  angle=angle+Vangle;
  if(angle>3.3){
    Vangle=-0.1;
  }
  if(angle<-0.3){
    Vangle=0.1;
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
