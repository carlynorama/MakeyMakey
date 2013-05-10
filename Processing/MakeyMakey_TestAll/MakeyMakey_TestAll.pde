/**
 * MakeyMakey TestAll
 * by Carlyn Maw, May 2013
 * 
 * This is a hello world for MakeyMakey in Processing
 * that tries to expose all the default options.
 * It is for trouble shooting and for writing your own. 
 * causing trouble. 
 *
 * As is, No restriction on use.  Have fun.
 */

//holder for graphic of what key is pressed 
PImage keyGraphic;
//transparency of key for fade-out effect
int alpha = 255;

//the usual suspects in set-up. text size is for text indicating mouse position
void setup() {
  size(220, 220);
  textSize(12);
  keyGraphic = loadImage("start.png");
}

void draw() {
  //light neutral background, just darker than the keys
  background(200);
  //how faded is the key?
  if (alpha > 0) { 
    alpha -= 2;
  } 
  else { 
    alpha = 0; //just in case it goes negative
  }
  tint(255, alpha); //no tint, changing opacity
  image(keyGraphic, 0, 0); //show the image

  //Mouse Data Display
  //Yay Built In Default Text!
  fill(102);
  text("x:", 165, 190);
  text(mouseX, 185, 190);
  text("y:", 165, 205);
  text(mouseY, 185, 205);
}

//what all key presses do
void doThis(String s) {
  //reset opacity
  alpha = 255;
  //debug statement
  println(s);
  //swap in the correct key press image
  keyGraphic = loadImage(s + ".png");
}

//Rise, Repeat
void mkymky_up() {
  doThis("up");
}

void mkymky_down() {
  doThis("down");
}

void mkymky_left() {
  doThis("left");
}

void mkymky_right() {
  doThis("right");
}

void mkymky_space() {
  doThis("space");
}

//front right of Makey Makey (Called by mkymky_lClick())
void mkymky_click() {
  doThis("click");
}


//----------------------------------------- BACK OF BOARD
void mkymky_w() {
  doThis("w");
}

void mkymky_a() {
  doThis("a");
}

void mkymky_s() {
  doThis("s");
}

void mkymky_d() {
  doThis("d");
}

void mkymky_f() {
  doThis("f");
}

void mkymky_g() {
  doThis("g");
}

void mkymky_rClick() {
  doThis("rclick");
}

void mkymky_lClick() {  //A1, punting it to front.
  mkymky_click();
}

