float circleX;
float xspeed = 5;
float circleY=250;
float yspeed = 4;
float size = 500;

void setup() {
  size(500, 500);
  circleX = 250;
}

void draw() {
  background (0, 5, 10);
  fill  (255, 204, 0);
  stroke(255, 204, 0);
  ellipse (circleX, circleY, 32, 32);

  circleX = circleX + xspeed;
  circleY = circleY + yspeed;
  strokeWeight(10); 
  rectMode (CENTER);
  noFill();
rect(250,250,size,size);
size-=1;
  if (circleX > 250+size/2)
  xspeed=-5;
  if (circleX <250-size/2) {
    //Turn around!
    xspeed=5;
  }
  if (circleY > 250+size/2)
  yspeed=-4;
  if (circleY <250-size/2) {
    //Turn around!
    yspeed=4;
  }
}
