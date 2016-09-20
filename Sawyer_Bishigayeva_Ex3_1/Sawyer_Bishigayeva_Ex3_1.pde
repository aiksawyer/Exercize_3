///this program draws a simple line pattern

///initializing global variable y
///it will be recognized throughout the program
int y = 200;

///setting up screen size and color, frameRate
void setup() {
  size(400, 400);
  background(#F0EAD6); ///eggshell white
  frameRate(15);
}

///drawing the pattern
void draw() {
  strokeWeight(3);
  y = y - 5; 
  while (y < 0) { ///while loop checks for the truth of condition;exit condition is y<0
    y = height;  
  } 
  line(0, y, width, y);///drawing a horizontal line
} 

void keyPressed(){  ///in case a key is pressed
  background(random(255), random(255),random(255));  ///background changes to random RGB
  stroke(255);  ///stroke color changes to white

}