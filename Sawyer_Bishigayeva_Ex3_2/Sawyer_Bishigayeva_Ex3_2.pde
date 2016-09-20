
//this program draws a simple triangular pattern

///initializing global variable y and x
int y= 0;
int x = 0;

//setting up the screen and backgound
void setup() {
  size(400, 400);
  background(0);
}

///drawing pattern
void draw() {
  for (x=0; x<width; x+=30) { ///for loop in which x moves 30 pixels untill x<width

    for (y=0; y<height; y+=40) { ///for loop moves y 40 pixels down untill y<height

      fill(#90EE90);//light grass green
      triangle(x, y, x+30, y, x+15, y+40);
      fill(#B20059); //berry red
      triangle(x, y, x-15, y+40, x+15, y+40);
    }
  }
}