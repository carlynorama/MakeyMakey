/**
 * MakeyMakey TestAll, Event Handlers
 * by Carlyn Maw, May 2013
 * 
 * This really the only page you'll NEED to drop in to your code.
 * Comment out the function references in the cases you aren't
 * going to use. 
 *
 * As is, No restriction on use.  Have fun.
 */


void mousePressed() {
  if (mouseButton == LEFT) {
    mkymky_lClick(); //front right of Makey Makey, and PIN A1
  } 
  else if (mouseButton == RIGHT) {
    mkymky_rClick(); //PIN A0
  }
}

//You might want to look into keyTyped if you want key repeating. 
void keyPressed() {

  switch(keyCode) {
     //where to find the key codes for java.
     //http://docs.oracle.com/javase/7/docs/api/constant-values.html#java.awt.event.KeyEvent.VK_A
     
     //it is not ideal to do this this way, but processing doesn't 
     //expose all the constants for use (for good reason) 
     //but I didn't want to bother with an ascii check and two separate case statements
    
    
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
  case 87: //w, PIN D5
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

