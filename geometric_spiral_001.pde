// Geometric Spiral 001
// by Rupert Russell
// September 2018
// code on Github at: https://github.com/rupertrussell/geometric-spiral-001
// Artwork on Redbubble at: https://www.redbubble.com/people/rupertrussell/works/34100935-geometric-spiral-001?asc=u
// Inspired by http://geometrydaily.tumblr.com/post/37113362376/338-square-attractor-a-new-minimal-geometric

int rectSize = 4100;
int count = 0;
float rotate = 0;
float step = 8.5;
int shrink = 90;
float strokeW = 25;

void setup() {
  size(8800, 8800); 
  noFill();
  strokeWeight(20);
  stroke(#5c3a15);
  background(#dfc7af);
}

void draw() {
  spiral(rotate);
  rotate = rotate + step;
}


void spiral(float rotate) {
  if (strokeW > 1) {
    strokeW = strokeW - 0.5;
  }

  strokeWeight(strokeW);
  translate(width/2, height/3);
  rotate(radians(rotate));
  rect(0, 0, rectSize, rectSize);
  rectSize = rectSize - shrink;
  println(rectSize);

  if (rectSize < 0) {
    save(rectSize +".png");
    exit();
    noLoop();
  }
}
