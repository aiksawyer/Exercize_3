int r = 255;
int b = 255;
int g = 255;

void setup() {
  size(400, 400);
  background(238, 221, 130); ///light goldenrod
}


void draw() {
  
  float angle = 0.0;
  for (int i = 0; i<= width; i+=35) {
    for (int y = 0; y <= height; y +=5) {
      float z = i + (sin(angle) * 35.0);
      angle += PI/40.0;
      noStroke();
      fill(#7971FF);
      rect(z, y, 2, 4);
    }
  }
}