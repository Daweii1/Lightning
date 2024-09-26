int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int cloudX = 0;

int lightningR = (int)(Math.random()*255);
int lightningG = (int)(Math.random()*255);
int lightningB = (int)(Math.random()*255);

void setup() {
  size(500, 500);
  strokeWeight(10);
  background(250, 250, 250);
}

void draw() {
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  while(startX <=500) {
    stroke(lightningR, lightningG, lightningB);
   endX = startX + (int)(Math.random()*10);
   endY = startY + (int)(Math.random()*19 - 9);
     
   line(startY- 100, startX-100, endY-100, endX-100);
   line(startY, startX, endY, endX);
    stroke(105,105,105);
   line(startY, startX + 100, endY+ 100, endX + 100);
   startX = endX;
   startY = endY;
  }
  stroke(220,220,220);
  fill(220,220,220);
  cloud();
}  

void mousePressed() {
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  
  if (cloudX >= 100) {
    cloudX = 0;
  } else {
   cloudX +=10;
  }
  
  lightningR = (int)(Math.random()*255);
  lightningG = (int)(Math.random()*255);
  lightningB = (int)(Math.random()*255);
}


void cloud() {
   ellipse(cloudX - 50, 25, 150, 150);
  ellipse(cloudX, 25, 150, 150);
  ellipse(cloudX + 50, 25, 150, 150);
   ellipse(cloudX + 100, 25, 150, 150);
    ellipse(cloudX +150, 25, 150, 150);
     ellipse(cloudX +250, 25, 150, 150);
     ellipse(cloudX +350, 25, 150, 150);
     ellipse(cloudX +450, 25, 150, 150);
}
