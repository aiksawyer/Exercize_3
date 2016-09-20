

int x=0;
int y=0;

int r=0;
int g=0;
int b=0;


void setup() {
  size(400, 400);
  background(255);
  frameRate(10);
}

void draw() {
  fill(r, g, b);
  rect(x, y, 40, 40);
  ellipseMode(CORNER);

  ellipse(x+40, y, 40, 40);

  triangle(x+80, y+40, x+100, y, x+120, y+40);

  x+=40;


  if (x>width) {
    x=0;
    y= y+40;
    r=0;
    g = g+50;
  }

  if (y >= height) {
    x=120;
    y=0;
    r=0;
    g=0;
    b = b+50;
    if (b > 255) {
      b=0;
    }
  }
}

void keyPressed(){
  background(255);
}