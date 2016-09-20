///this program draws a spiral design


//initializing global variables - coordinates
float x=40;
float y=40;

///initializing global variables – radians
float start = 0;
float stop = PI;


//setting up screen and background
void setup() {
  size(400, 400);
  background (255, 192, 200); ///pastel pink
  frameRate(10);
}

///drawing pattern and checking for mouse
void draw() {
  noFill();
  strokeWeight(3);
  arc(width/2, height/2, x, y, start, stop); ///arc


  if (x%2==0) {  //if conditional that colors arcs 2 different colors
    stroke(255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(3);
  }


  if (x<600) { //increases width and changes start and stop radians
    x=x+15;
    start=start+QUARTER_PI/2;
    stop=stop+QUARTER_PI/2;
  }

  if (y<600) {  ///increases height
    y=y+15;
  }
  mousePressed();
}

void mousePressed() {   ///creates a square "eraser" that follows mouse coordinates
  fill(255);                  //and colors white
  rect(mouseX, mouseY, 40, 40);
}