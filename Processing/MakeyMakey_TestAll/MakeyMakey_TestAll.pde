/**
 * MakeyMakey TestAll
 * by Carlyn Maw, May 2013
 * 
 * This is a hello world for MakeyMakey in Processing
 * that tries to expose all the defalut options.
 * It is for trouble shooting and for writng your own. 
 * causing trouble. 
 *
 * As is, No restriction on use.  Have fun.
 */
 
PImage keyGraphic;
int alpha = 255;

void setup() {
  size(220, 220);
  textSize(12);
  keyGraphic = loadImage("start.png");
}

void draw() {
  background(200);
  if (alpha > 0) { 
    alpha -= 2;
  }
  tint(255, alpha);
  image(keyGraphic, 0, 0);
  
  //Mouse Data
  fill(102);
  text("x:", 165, 190);
  text(mouseX, 185, 190);
  text("y:", 165, 205);
  text(mouseY, 185, 205);
}

void doThis(String s) {
  alpha = 255;
  println(s);
  keyGraphic = loadImage(s + ".png");
}

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

//front right of Makey Makey (Called by mkymky_lClcik())
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


