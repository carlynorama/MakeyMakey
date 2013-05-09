
void mousePressed() {
  if (mouseButton == LEFT) {
    mkymky_lClick(); //front right of Makey Makey, and PIN A1
  } 
  else if (mouseButton == RIGHT) {
    mkymky_rClick(); //PIN A0
  }
}

void keyPressed() {

  switch(keyCode) {
    //http://docs.oracle.com/javase/7/docs/api/constant-values.html#java.awt.event.KeyEvent.VK_A
    //Front of Makey Makey  
  case 38: //UP
    mkymky_up();  
    break;
  case 40: //DOWN
    mkymky_down();  
    break;
  case 37: //LEFT
    mkymky_left();  
    break;
  case 39: //RIGHT
    mkymky_right();  
    break;
  case 32: //SPACE
    mkymky_space();  
    break;

    //Back of Makey Makey
  case 87: //w, PIN D5 VK_W 
    mkymky_w(); 
    break;
  case 65: //a, PIN D4
    mkymky_a(); 
    break;
  case 83: //s, PIN D3
    mkymky_s();
    break;
  case 68: //d, PIN D2
    mkymky_d();
    break;
  case 70: //f, PIN D1
    mkymky_f();
    break;
  case 71: //g, PIN D0
    mkymky_g();
    break;
  }
}

