

///setting up global variables
int x = 0;
int y = 0;

int r = 50;
int g = 50;
int b = 50;

///setting up screen size and background
void setup() {
  size(400, 400);
  background(255);
}

///drawing an ellipse within a square
void draw() {
  fill(r, g, b); 
  stroke(255);
  rect(x, y, 50, 50, 7);
  ellipseMode(CORNER);
  ellipse(x, y, 50, 50);

  x = x+50;
  
  if (x>width) {///if conditional that draws the pattern
    x=0;
    y= y+50;
    r+=50;
  }

  if (y>height) {
    y=0;
    x=0;
    b+=50;
    g+=50;
  }
}

void keyPressed() { ///coloring is reset when key is pressed
  r=0;
  g=0;
  b=0;
}