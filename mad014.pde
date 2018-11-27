float i=0;
float w=32;
float j=0;
int rr;
int gg;
int bb;
void setup() {
  size(512, 256);
  background(255);
  rr=int(random(255));
  gg=int(random(255));
  bb=int(random(255));
}
void draw() {
  fill(255, 255, 255, 8);
  noStroke();
  rect(0, 0, width, height);
  fill(rr, gg, bb);
  stroke(0);
  rect(i, map(sin(radians(map(i, 0, width, 0, 180))), 0, 1, height*0.5, 0), w, map(sin(radians(map(i, 0, width, 0, 180))), 0, 1, 0, height));
  i+=map(i, 0, width, 1, w*0.5);
  if (i>=width+w) {
    i=0;
    rr=int(random(255));
    gg=int(random(255));
    bb=int(random(255));
    j++;
  }
  if (j>=1&&j<=4) {
    saveFrame("gif/mad014-######.png");
  }
}
