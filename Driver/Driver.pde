import java.util.*;
Cube solveCube = new Cube(); 

String[][] upSide = new String[3][3];
String[][] leftSide = new String[3][3];
String[][] frontSide = new String[3][3];
String[][] rightSide = new String[3][3];
String[][] backSide = new String[3][3];
String[][] downSide = new String[3][3];

void setup() {
  size(1000, 1000);
  // solveCube.scrambleFixed();
}

public color stringToColor(String col) {
  switch(col) {
  case "orange": 
    return color(255, 128, 0);
  case "white": 
    return color(255, 255, 255);
  case "blue": 
    return color(0, 0, 255);
  case "green": 
    return color(0, 255, 0);
  case "yellow": 
    return color(255, 255, 51);
  case "red": 
    return color(255, 0, 0);
  default:
    return color(0, 0, 0);
  }
}

int mode = 0;

String colorMode = "white";

void keyPressed() {
    switch(key) { 
    case 'm': 
      if (mode == 2) {
        mode = 0;
      } else {
        mode++;
      }
      break;
    case 'q': 
      solveCube.L();
      break;
    case 'a': 
      solveCube.LPrime();
      break;
    case 'w': 
      solveCube.R();
      break;
    case 's': 
      solveCube.RPrime();
      break;
    case 'e': 
      solveCube.U();
      break;
    case 'd': 
      solveCube.UPrime();
      break;
    case 'r': 
      solveCube.D();
      break;
    case 'f': 
      solveCube.D();
      break;
    case 't': 
      solveCube.F();
      break;
    case 'g': 
      solveCube.FPrime();
      break;
    case 'y': 
      solveCube.B();
      break;
    case 'h': 
      solveCube.BPrime();
      break;
    case 'u':
      solveCube.M();
      break;
    case 'j':
      solveCube.MPrime(); 
      break;
    case 'i':
      solveCube.E(); 
      break;
    case 'k':
      solveCube.EPrime();
      break;
    case 'o':
      solveCube.S(); 
      break;
    case 'l':
      solveCube.SPrime();
      break;
    case 'z':
      solveCube.X();
      break;
    case 'x':
      solveCube.Y();
      break;
    case 'c':
      solveCube.Z();
      break;
    case 'v':
      solveCube.XPrime();
      break;
    case 'b':
      solveCube.YPrime();
      break;
    case 'n':
      solveCube.ZPrime();
      break;
    case ENTER:
      solveCube.solve();
      break;
    case '/':
      if(solveCube.printScramble() == true){
        solveCube.printScrambleToggle(false);
      }else{
        solveCube.printScrambleToggle(true);
      }
    default: 
      break;
  }
}

void mouseClicked() {
  if (mouseX > 0 && mouseX < 150 && mouseY > 700 && mouseY < 750) {
    solveCube.reset();
  } else if (mouseX > 0 && mouseX < 150 && mouseY > 800 && mouseY < 850) {
    solveCube.scramble();
  } else if (mouseX > 170 && mouseX < 220 && mouseY > 700 && mouseY < 750) {
    solveCube.L();
  } else if (mouseX > 170 && mouseX < 220 && mouseY > 800 && mouseY < 850) {
    solveCube.LPrime();
  } else if (mouseX > 240 && mouseX < 290 && mouseY > 700 && mouseY < 750) {
    solveCube.R();
  } else if (mouseX > 240 && mouseX < 290 && mouseY > 800 && mouseY < 850) {
    solveCube.RPrime();
  } else if (mouseX > 310 && mouseX < 360 && mouseY > 700 && mouseY < 750) {
    solveCube.U();
  } else if (mouseX > 310 && mouseX < 360 && mouseY > 800 && mouseY < 850) {
    solveCube.UPrime();
  } else if (mouseX > 380 && mouseX < 420 && mouseY > 700 && mouseY < 750) { 
    solveCube.D();
  } else if (mouseX > 380 && mouseX < 420 && mouseY > 800 && mouseY < 850) {
    solveCube.DPrime();
  } else if (mouseX > 450 && mouseX < 500 && mouseY > 700 && mouseY < 750) {
    solveCube.F();
  } else if (mouseX > 450 && mouseX < 500 && mouseY > 800 && mouseY < 850) {
    solveCube.FPrime();
  } else if (mouseX > 520 && mouseX < 570 && mouseY > 700 && mouseY < 750) {
    solveCube.B();
  } else if (mouseX > 520 && mouseX < 570 && mouseY > 800 && mouseY < 850) {
    solveCube.BPrime();
  } else if (mouseX > 590 && mouseX < 640 && mouseY > 700 && mouseY < 750) {
    solveCube.M();
  } else if (mouseX > 590 && mouseX < 640 && mouseY > 800 && mouseY < 850) {
    solveCube.MPrime();
  } else if (mouseX > 660 && mouseX < 710 && mouseY > 700 && mouseY < 750) {
    solveCube.E();
  } else if (mouseX > 660 && mouseX < 710 && mouseY > 800 && mouseY < 850) {
    solveCube.EPrime();
  } else if (mouseX > 730 && mouseX < 780 && mouseY > 700 && mouseY < 750) {
    solveCube.S();
  } else if (mouseX > 730 && mouseX < 780 && mouseY > 800 && mouseY < 850) {
    solveCube.SPrime();
  } else if (mouseX > 800 && mouseX < 850 && mouseY > 700 && mouseY < 750) {
    solveCube.X();
  } else if (mouseX > 800 && mouseX < 850 && mouseY > 800 && mouseY < 850) {
    solveCube.XPrime();
  } else if (mouseX > 860 && mouseX < 910 && mouseY > 700 && mouseY < 750) {
    solveCube.Y();
  } else if (mouseX > 860 && mouseX < 910 && mouseY > 800 && mouseY < 850) {
    solveCube.YPrime();
  } else if (mouseX > 930 && mouseX < 980 && mouseY > 700 && mouseY < 750) {
    solveCube.Z();
  } else if (mouseX > 930 && mouseX < 980 && mouseY > 800 && mouseY < 850) {
    solveCube.ZPrime();
  }

  //changing colors mode
  else if (mouseX > 0 && mouseX < 50 && mouseY > 899 && mouseY < 950) {
    colorMode = "orange";
  } else if (mouseX > 49 && mouseX < 100 && mouseY > 899 && mouseY < 950) {
    colorMode = "white";
  } else if (mouseX > 99 && mouseX < 150 && mouseY > 899 && mouseY < 950) {
    colorMode = "red";
  } else if (mouseX > 149 && mouseX < 200 && mouseY > 899 && mouseY < 950) {
    colorMode = "green";
  } else if (mouseX > 199 && mouseX < 250 && mouseY > 899 && mouseY < 950) {
    colorMode = "blue";
  } else if (mouseX > 249 && mouseX < 300 && mouseY > 899 && mouseY < 950) {
    colorMode = "yellow";
  } else {
    //for click to change colors
    if (mode == 0) {
      //net mode
      if (mouseX > 249 && mouseX < 300 && mouseY > 249 && mouseY < 300 ) {
        solveCube.getPiece(1, 1, 1).setCol(colorMode, "x");
      } else if (mouseX > 299 && mouseX < 350 && mouseY > 249 && mouseY < 300 ) {
        solveCube.getPiece(1, 0, 1).setCol(colorMode, "x");
      } else if (mouseX > 349 && mouseX < 400 && mouseY > 249 && mouseY < 300) {
        solveCube.getPiece(1, -1, 1).setCol(colorMode, "x");
      } else if (mouseX > 399 && mouseX < 450 && mouseY > 249 && mouseY < 300) {
        solveCube.getPiece(1, -1, 1).setCol(colorMode, "y");
      } else if (mouseX > 449 && mouseX < 500 && mouseY > 249 && mouseY < 300) {
        solveCube.getPiece(0, -1, 1).setCol(colorMode, "y");
      } else if (mouseX > 499 && mouseX < 550 && mouseY > 249 && mouseY < 300) {
        solveCube.getPiece(-1, -1, 1).setCol(colorMode, "y");
      } else if (mouseX > 549 && mouseX < 600 && mouseY > 249 && mouseY < 300) {
        solveCube.getPiece(-1, -1, 1).setCol(colorMode, "x");
      } else if (mouseX > 599 && mouseX < 650 && mouseY > 249 && mouseY < 300) {
        solveCube.getPiece(-1, 0, 1).setCol(colorMode, "x");
      } else if (mouseX > 649 && mouseX < 700 && mouseY > 249 && mouseY < 300) {
        solveCube.getPiece(-1, 1, 1).setCol(colorMode, "x");
      } else if (mouseX > 699 && mouseX < 750 && mouseY > 249 && mouseY < 300) {
        solveCube.getPiece(-1, 1, 1).setCol(colorMode, "y");
      } else if (mouseX > 749 && mouseX < 800 && mouseY > 249 && mouseY < 300) {
        solveCube.getPiece(0, 1, 1).setCol(colorMode, "y");
      } else if (mouseX > 799 && mouseX < 850 && mouseY > 249 && mouseY < 300) {
        solveCube.getPiece(1, 1, 1).setCol(colorMode, "y");
      } else if (mouseX > 249 && mouseX < 300 && mouseY > 299 && mouseY < 350) {
        //middle row
        solveCube.getPiece(1, 1, 0).setCol(colorMode, "x");
      } else if (mouseX > 299 && mouseX < 350 && mouseY > 299 && mouseY < 350) {
        solveCube.getPiece(1, 0, 0).setCol(colorMode, "x");
      } else if (mouseX > 349 && mouseX < 400 && mouseY > 299 && mouseY < 350) {
        solveCube.getPiece(1, -1, 0).setCol(colorMode, "x");
      } else if (mouseX > 399 && mouseX < 450 && mouseY > 299 && mouseY < 350) {
        solveCube.getPiece(1, -1, 0).setCol(colorMode, "y");
      } else if (mouseX > 449 && mouseX < 500 && mouseY > 299 && mouseY < 350) {
        solveCube.getPiece(0, -1, 0).setCol(colorMode, "y");
      } else if (mouseX > 499 && mouseX < 550 && mouseY > 299 && mouseY < 350) {
        solveCube.getPiece(-1, -1, 0).setCol(colorMode, "y");
      } else if (mouseX > 549 && mouseX < 600 && mouseY > 299 && mouseY < 350) {
        solveCube.getPiece(-1, -1, 0).setCol(colorMode, "x");
      } else if (mouseX > 599 && mouseX < 650 && mouseY > 299 && mouseY < 350) {
        solveCube.getPiece(-1, 0, 0).setCol(colorMode, "x");
      } else if (mouseX > 649 && mouseX < 700 && mouseY > 299 && mouseY < 350) {
        solveCube.getPiece(-1, 1, 0).setCol(colorMode, "x");
      } else if (mouseX > 699 && mouseX < 750 && mouseY > 299 && mouseY < 350) {
        solveCube.getPiece(-1, 1, 0).setCol(colorMode, "y");
      } else if (mouseX > 749 && mouseX < 800 && mouseY > 299 && mouseY < 350) {
        solveCube.getPiece(0, 1, 0).setCol(colorMode, "y");
      } else if (mouseX > 799 && mouseX < 850 && mouseY > 299 && mouseY < 350) {
        solveCube.getPiece(1, 1, 0).setCol(colorMode, "y");
      } else if (mouseX > 249 && mouseX < 300 && mouseY > 349 && mouseY < 400) {
        //third row
        solveCube.getPiece(1, 1, -1).setCol(colorMode, "x");
      } else if (mouseX > 299 && mouseX < 350 && mouseY > 349 && mouseY < 400) {
        solveCube.getPiece(1, 0, -1).setCol(colorMode, "x");
      } else if (mouseX > 349 && mouseX < 400 && mouseY > 349 && mouseY < 400) {
        solveCube.getPiece(1, -1, -1).setCol(colorMode, "x");
      } else if (mouseX > 399 && mouseX < 450 && mouseY > 349 && mouseY < 400) {
        solveCube.getPiece(1, -1, -1).setCol(colorMode, "y");
      } else if (mouseX > 449 && mouseX < 500 && mouseY > 349 && mouseY < 400) {
        solveCube.getPiece(0, -1, -1).setCol(colorMode, "y");
      } else if (mouseX > 499 && mouseX < 550 && mouseY > 349 && mouseY < 400) {
        solveCube.getPiece(-1, -1, -1).setCol(colorMode, "y");
      } else if (mouseX > 549 && mouseX < 600 && mouseY > 349 && mouseY < 400) {
        solveCube.getPiece(-1, -1, -1).setCol(colorMode, "x");
      } else if (mouseX > 599 && mouseX < 650 && mouseY > 349 && mouseY < 400) {
        solveCube.getPiece(-1, 0, -1).setCol(colorMode, "x");
      } else if (mouseX > 649 && mouseX < 700 && mouseY > 349 && mouseY < 400) {
        solveCube.getPiece(-1, 1, -1).setCol(colorMode, "x");
      } else if (mouseX > 699 && mouseX < 750 && mouseY > 349&& mouseY < 400) {
        solveCube.getPiece(-1, 1, -1).setCol(colorMode, "y");
      } else if (mouseX > 749 && mouseX < 800 && mouseY > 349 && mouseY < 400) {
        solveCube.getPiece(0, 1, -1).setCol(colorMode, "y");
      } else if (mouseX > 799 && mouseX < 850 && mouseY > 349 && mouseY < 400) {
        solveCube.getPiece(1, 1, -1).setCol(colorMode, "y");
      } else if (mouseX > 399 && mouseX < 450 && mouseY > 99 && mouseY < 150) {
        //top faces
        solveCube.getPiece(1, 1, 1).setCol(colorMode, "z");
      } else if (mouseX > 449 && mouseX < 500 && mouseY > 99 && mouseY < 150) {
        solveCube.getPiece(0, 1, 1).setCol(colorMode, "z");
      } else if (mouseX > 499 && mouseX < 550 && mouseY > 99 && mouseY < 150) {
        solveCube.getPiece(-1, 1, 1).setCol(colorMode, "z");
      } else if (mouseX > 399 && mouseX < 450 && mouseY > 149 && mouseY < 200) {
        solveCube.getPiece(1, 0, 1).setCol(colorMode, "z");
      } else if (mouseX > 449 && mouseX < 500 && mouseY > 149 && mouseY < 200) {
        solveCube.getPiece(0, 0, 1).setCol(colorMode, "z");
      } else if (mouseX > 499 && mouseX < 550 && mouseY > 149 && mouseY < 200) {
        solveCube.getPiece(-1, 0, 1).setCol(colorMode, "z");
      } else if (mouseX > 399 && mouseX < 450 && mouseY > 199 && mouseY < 250) {
        solveCube.getPiece(1, -1, 1).setCol(colorMode, "z");
      } else if (mouseX > 449 && mouseX < 500 && mouseY > 199 && mouseY < 250) {
        solveCube.getPiece(0, -1, 1).setCol(colorMode, "z");
      } else if (mouseX > 499 && mouseX < 550 && mouseY > 199 && mouseY < 250) {
        solveCube.getPiece(-1, -1, 1).setCol(colorMode, "z");
      } else if (mouseX > 399 && mouseX < 450 && mouseY > 399 && mouseY < 450) {
        //bot faces
        solveCube.getPiece(1, -1, -1).setCol(colorMode, "z");
      } else if (mouseX > 449 && mouseX < 500 && mouseY > 399 && mouseY < 450) {
        solveCube.getPiece(0, -1, -1).setCol(colorMode, "z");
      } else if (mouseX > 499 && mouseX < 550 && mouseY > 399 && mouseY < 450) {
        solveCube.getPiece(-1, -1, -1).setCol(colorMode, "z");
      } else if (mouseX > 399 && mouseX < 450 && mouseY > 449 && mouseY < 500) {
        solveCube.getPiece(1, 0, -1).setCol(colorMode, "z");
      } else if (mouseX > 449 && mouseX < 500 && mouseY > 449 && mouseY < 500) {
        solveCube.getPiece(0, 0, -1).setCol(colorMode, "z");
      } else if (mouseX > 499 && mouseX < 550 && mouseY > 449 && mouseY < 500) {
        solveCube.getPiece(-1, 0, -1).setCol(colorMode, "z");
      } else if (mouseX > 399 && mouseX < 450 && mouseY > 499 && mouseY < 550) {
        solveCube.getPiece(1, 1, -1).setCol(colorMode, "z");
      } else if (mouseX > 449 && mouseX < 500 && mouseY > 499 && mouseY < 550) {
        solveCube.getPiece(0, 1, -1).setCol(colorMode, "z");
      } else if (mouseX > 499 && mouseX < 550 && mouseY > 499 && mouseY < 550) {
        solveCube.getPiece(-1, 1, -1).setCol(colorMode, "z");
      }
    }
  }
}

void draw() {
  background(128);
  // text("mouseX: " + mouseX, 0, 50);
  // text("mouseY: " + mouseY, 0, 100);
  text("Print scramble: " + solveCube.printScramble(), 0, 100);
  if(mode == 0){
    text("Mode: Net", 0, 150);
  }else if(mode == 1){
    text("Mode: 3D", 0, 150);
  }else{
    text("Mode: 3D Floating Faces", 0, 150);
  }
  text("Color mode: " + colorMode, 0, 200);
  text("Color Picker", 0, 880);
  update();
  if (mode == 0) { 
    for (int i = 0; i < upSide.length; i++) {
      for (int j = 0; j < upSide[0].length; j++) {
        fill(stringToColor(upSide[i][j]));
        rect(400+j*50, 100+i*50, 50, 50);
        //quad(400, 250, 435, 220, 485, 230, 450, 260); 
        //quad(450+j*50-i*25, 150+i*50, 475+j*50-i*25, 100+i*50, 525+j*50-i*25, 100+i*50, 500+j*50-i*25, 150+i*50);
        //quad(470+j*50-i*35, 190+j*10+i*30, 505+j*50-i*35, 160+j*10+i*30, 555+j*50-i*35, 170+j*10+i*30, 520+j*50-i*35, 200+j*10+i*30);
      }
    } 
    for (int i = 0; i < leftSide.length; i++) {
      for (int j = 0; j < leftSide[0].length; j++) {
        fill(stringToColor(leftSide[i][j]));
        rect(250+j*50, 250+i*50, 50, 50);
        //quad(550+j*35,330-j*30+i*50,550+j*35,280-j*30+i*50,585+j*35,250-j*30+i*50,585+j*35,300-j*30+i*50); 
        //quad(355,180,355,130,320,160,320,210);
        //quad(250+j*35,270-j*30+i*50,250+j*35,220-j*30+i*50,285+j*35,190-j*30+i*50,285+j*35,240-j*30+i*50);
        //quad(355-j*35, 180+j*30+i*50, 355-j*35, 130+j*30+i*50, 320-j*35, 160+j*30+i*50, 320-j*35, 210+j*30+i*50);
      }
    }
    for (int i = 0; i < frontSide.length; i++) {
      for (int j = 0; j < frontSide[0].length; j++) {
        fill(stringToColor(frontSide[i][j]));
        //quad(400+j*50, 300+j*10+i*50, 400+j*50, 250+j*10+i*50, 450+j*50, 260+j*10+i*50, 450+j*50, 310+j*10+i*50);
        rect(400+j*50, 250+i*50, 50, 50);
      }
    }
    for (int i = 0; i < rightSide.length; i++) {
      for (int j = 0; j < rightSide[0].length; j++) {
        fill(stringToColor(rightSide[i][j]));
        rect(550+j*50, 250+i*50, 50, 50); 
        //quad(550+j*50, 230-j*10+i*50, 550+j*50, 180-j*10+i*50, 600+j*50, 170-j*10+i*50, 600+j*50, 220-j*10+i*50); 
        //quad(550+j*35, 330-j*30+i*50, 550+j*35, 280-j*30+i*50, 585+j*35, 250-j*30+i*50, 585+j*35, 300-j*30+i*50); 
        //270
      }
    }
    for (int i = 0; i < backSide.length; i++) {
      for (int j = 0; j < backSide[0].length; j++) {
        fill(stringToColor(backSide[i][j]));
        rect(700+j*50, 250+i*50, 50, 50); 
        //quad(700+j*50, 100+j*10+i*50, 700+j*50, 50+j*10+i*50, 750+j*50, 60+j*10+i*50, 750+j*50, 110+j*10+i*50);
        //quad(850-j*50, 130-j*10+i*50, 850-j*50, 80-j*10+i*50, 800-j*50, 70-j*10+i*50, 800-j*50, 120-j*10+i*50);
      }
    }
    for (int i = 0; i < downSide.length; i++) {
      for (int j = 0; j < downSide[0].length; j++) {
        fill(stringToColor(downSide[i][j]));
        rect(400+j*50, 400+i*50, 50, 50); 
        //quad(470+j*50-i*35, 490+j*10+i*30, 505+j*50-i*35, 460+j*10+i*30, 555+j*50-i*35, 470+j*10+i*30, 520+j*50-i*35, 500+j*10+i*30); 
        //quad(435+j*50+i*35, 520+j*10-i*30, 400+j*50+i*35, 550+j*10-i*30, 450+j*50+i*35, 560+j*10-i*30, 485+j*50+i*35, 530+j*10-i*30);
      }
    } 
    //L
    if (mouseX > 170 && mouseX < 220 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(410, 360, 425, 390, 440, 360);
      rect(415, 260, 20, 100);
      triangle(410, 210, 425, 240, 440, 210);
      rect(415, 110, 20, 100);
      triangle(410, 510, 425, 540, 440, 510);
      rect(415, 410, 20, 100);
      triangle(810, 290, 825, 260, 840, 290); 
      rect(815, 290, 20, 100);
    } 
    //LPrime
    if (mouseX > 170 && mouseX < 220 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63); 
      triangle(810, 360, 825, 390, 840, 360);
      rect(815, 260, 20, 100); 
      triangle(410, 290, 425, 260, 440, 290); 
      rect(415, 290, 20, 100);
      triangle(410, 140, 425, 110, 440, 140); 
      rect(415, 140, 20, 100);
      triangle(410, 440, 425, 410, 440, 440); 
      rect(415, 440, 20, 100);
    } 
    //M  
    if (mouseX > 590 && mouseX < 640 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(460, 360, 475, 390, 490, 360);
      rect(465, 260, 20, 100);
      triangle(460, 210, 475, 240, 490, 210);
      rect(465, 110, 20, 100);
      triangle(460, 510, 475, 540, 490, 510);
      rect(465, 410, 20, 100);
      triangle(760, 290, 775, 260, 790, 290); 
      rect(765, 290, 20, 100);
    } 
    //MPrime
    if (mouseX > 590 && mouseX < 640 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63); 
      triangle(460, 290, 475, 260, 490, 290); 
      rect(465, 290, 20, 100);
      triangle(460, 140, 475, 110, 490, 140); 
      rect(465, 140, 20, 100);
      triangle(460, 440, 475, 410, 490, 440); 
      rect(465, 440, 20, 100);
      triangle(760, 360, 775, 390, 790, 360);
      rect(765, 260, 20, 100);
    }
    //R 
    if (mouseX > 240 && mouseX < 290 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63); 
      triangle(510, 290, 525, 260, 540, 290); 
      rect(515, 290, 20, 100);
      triangle(510, 140, 525, 110, 540, 140); 
      rect(515, 140, 20, 100);
      triangle(510, 440, 525, 410, 540, 440); 
      rect(515, 440, 20, 100);
      triangle(710, 360, 725, 390, 740, 360);
      rect(715, 260, 20, 100);
    } 
    //RPrime  
    if (mouseX > 240 && mouseX < 290 && mouseY > 800 && mouseY < 850) { 
      fill(0, 0, 0, 63);
      triangle(510, 360, 525, 390, 540, 360);
      rect(515, 260, 20, 100);
      triangle(510, 210, 525, 240, 540, 210);
      rect(515, 110, 20, 100);
      triangle(510, 510, 525, 540, 540, 510);
      rect(515, 410, 20, 100);
      triangle(710, 290, 725, 260, 740, 290); 
      rect(715, 290, 20, 100);
    } 
    //X  
    if (mouseX > 800 && mouseX < 850 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 290, 525, 260, 540, 290); 
      rect(515, 290, 20, 100);
      triangle(510, 140, 525, 110, 540, 140); 
      rect(515, 140, 20, 100);
      triangle(510, 440, 525, 410, 540, 440); 
      rect(515, 440, 20, 100);
      triangle(710, 360, 725, 390, 740, 360);
      rect(715, 260, 20, 100); 
      triangle(460, 290, 475, 260, 490, 290); 
      rect(465, 290, 20, 100);
      triangle(460, 140, 475, 110, 490, 140); 
      rect(465, 140, 20, 100);
      triangle(460, 440, 475, 410, 490, 440); 
      rect(465, 440, 20, 100);
      triangle(760, 360, 775, 390, 790, 360);
      rect(765, 260, 20, 100);
      triangle(810, 360, 825, 390, 840, 360);
      rect(815, 260, 20, 100); 
      triangle(410, 290, 425, 260, 440, 290); 
      rect(415, 290, 20, 100);
      triangle(410, 140, 425, 110, 440, 140); 
      rect(415, 140, 20, 100);
      triangle(410, 440, 425, 410, 440, 440); 
      rect(415, 440, 20, 100);
    } 
    if (mouseX > 800 && mouseX < 850 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(510, 360, 525, 390, 540, 360);
      rect(515, 260, 20, 100);
      triangle(510, 210, 525, 240, 540, 210);
      rect(515, 110, 20, 100);
      triangle(510, 510, 525, 540, 540, 510);
      rect(515, 410, 20, 100);
      triangle(710, 290, 725, 260, 740, 290); 
      rect(715, 290, 20, 100); 
      triangle(460, 360, 475, 390, 490, 360);
      rect(465, 260, 20, 100);
      triangle(460, 210, 475, 240, 490, 210);
      rect(465, 110, 20, 100);
      triangle(460, 510, 475, 540, 490, 510);
      rect(465, 410, 20, 100);
      triangle(760, 290, 775, 260, 790, 290); 
      rect(765, 290, 20, 100); 
      triangle(410, 360, 425, 390, 440, 360);
      rect(415, 260, 20, 100);
      triangle(410, 210, 425, 240, 440, 210);
      rect(415, 110, 20, 100);
      triangle(410, 510, 425, 540, 440, 510);
      rect(415, 410, 20, 100);
      triangle(810, 290, 825, 260, 840, 290); 
      rect(815, 290, 20, 100);
    }  
    //okay
    //U 
    if (mouseX > 310 && mouseX < 360 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(440, 290, 410, 275, 440, 260); 
      rect(440, 265, 100, 20);
      triangle(290, 290, 260, 275, 290, 260); 
      rect(290, 265, 100, 20);
      triangle(590, 290, 560, 275, 590, 260); 
      rect(590, 265, 100, 20);
      triangle(740, 290, 710, 275, 740, 260); 
      rect(740, 265, 100, 20);
    } 
    //UPrime 
    if (mouseX > 310 && mouseX < 360 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(510, 290, 540, 275, 510, 260); 
      rect(410, 265, 100, 20);
      triangle(660, 290, 690, 275, 660, 260); 
      rect(560, 265, 100, 20);
      triangle(360, 290, 390, 275, 360, 260); 
      rect(260, 265, 100, 20);
      triangle(810, 290, 840, 275, 810, 260); 
      rect(710, 265, 100, 20);
    } 
    //D 
    if (mouseX > 380 && mouseX < 420 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 390, 540, 375, 510, 360); 
      rect(410, 365, 100, 20);
      triangle(660, 390, 690, 375, 660, 360); 
      rect(560, 365, 100, 20);
      triangle(360, 390, 390, 375, 360, 360); 
      rect(260, 365, 100, 20);
      triangle(810, 390, 840, 375, 810, 360); 
      rect(710, 365, 100, 20);
    } 
    //DPrime 
    if (mouseX > 380 && mouseX < 420 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(440, 390, 410, 375, 440, 360); 
      rect(440, 365, 100, 20);
      triangle(290, 390, 260, 375, 290, 360); 
      rect(290, 365, 100, 20);
      triangle(590, 390, 560, 375, 590, 360); 
      rect(590, 365, 100, 20);
      triangle(740, 390, 710, 375, 740, 360); 
      rect(740, 365, 100, 20);
    }  
    //E 
    if (mouseX > 660 && mouseX < 710 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 340, 540, 325, 510, 310); 
      rect(410, 315, 100, 20);
      triangle(660, 340, 690, 325, 660, 310); 
      rect(560, 315, 100, 20);
      triangle(360, 340, 390, 325, 360, 310); 
      rect(260, 315, 100, 20);
      triangle(810, 340, 840, 325, 810, 310); 
      rect(710, 315, 100, 20);
    } 
    //EPrime 
    if (mouseX > 660 && mouseX < 710 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(440, 340, 410, 325, 440, 310); 
      rect(440, 315, 100, 20);
      triangle(290, 340, 260, 325, 290, 310); 
      rect(290, 315, 100, 20);
      triangle(590, 340, 560, 325, 590, 310); 
      rect(590, 315, 100, 20);
      triangle(740, 340, 710, 325, 740, 310); 
      rect(740, 315, 100, 20);
    } 
    //Z
    if (mouseX > 930 && mouseX < 980 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 290, 540, 275, 510, 260); 
      rect(410, 265, 100, 20);
      triangle(660, 290, 690, 275, 660, 260); 
      rect(560, 265, 100, 20);
      triangle(360, 290, 390, 275, 360, 260); 
      rect(260, 265, 100, 20);
      triangle(810, 290, 840, 275, 810, 260); 
      rect(710, 265, 100, 20); 
      triangle(510, 390, 540, 375, 510, 360); 
      rect(410, 365, 100, 20);
      triangle(660, 390, 690, 375, 660, 360); 
      rect(560, 365, 100, 20);
      triangle(360, 390, 390, 375, 360, 360); 
      rect(260, 365, 100, 20);
      triangle(810, 390, 840, 375, 810, 360); 
      rect(710, 365, 100, 20); 
      triangle(510, 340, 540, 325, 510, 310); 
      rect(410, 315, 100, 20);
      triangle(660, 340, 690, 325, 660, 310); 
      rect(560, 315, 100, 20);
      triangle(360, 340, 390, 325, 360, 310); 
      rect(260, 315, 100, 20);
      triangle(810, 340, 840, 325, 810, 310); 
      rect(710, 315, 100, 20);
    } 
    //ZPrime 
    if (mouseX > 930 && mouseX < 980 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(440, 290, 410, 275, 440, 260); 
      rect(440, 265, 100, 20);
      triangle(290, 290, 260, 275, 290, 260); 
      rect(290, 265, 100, 20);
      triangle(590, 290, 560, 275, 590, 260); 
      rect(590, 265, 100, 20);
      triangle(740, 290, 710, 275, 740, 260); 
      rect(740, 265, 100, 20); 
      triangle(440, 390, 410, 375, 440, 360); 
      rect(440, 365, 100, 20);
      triangle(290, 390, 260, 375, 290, 360); 
      rect(290, 365, 100, 20);
      triangle(590, 390, 560, 375, 590, 360); 
      rect(590, 365, 100, 20);
      triangle(740, 390, 710, 375, 740, 360); 
      rect(740, 365, 100, 20);
      triangle(440, 340, 410, 325, 440, 310); 
      rect(440, 315, 100, 20);
      triangle(290, 340, 260, 325, 290, 310); 
      rect(290, 315, 100, 20);
      triangle(590, 340, 560, 325, 590, 310); 
      rect(590, 315, 100, 20);
      triangle(740, 340, 710, 325, 740, 310); 
      rect(740, 315, 100, 20);
    } 
    //F
    if (mouseX > 450 && mouseX < 500 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 240, 540, 225, 510, 210); 
      rect(410, 215, 100, 20);  
      triangle(560, 360, 575, 390, 590, 360);
      rect(565, 260, 20, 100);  
      triangle(440, 440, 410, 425, 440, 410); 
      rect(440, 415, 100, 20);
      triangle(360, 290, 375, 260, 390, 290); 
      rect(365, 290, 20, 100);
    } 
    //FPrime
    if (mouseX > 450 && mouseX < 500 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(440, 240, 410, 225, 440, 210); 
      rect(440, 215, 100, 20); 
      triangle(360, 360, 375, 390, 390, 360);
      rect(365, 260, 20, 100);
      triangle(510, 440, 540, 425, 510, 410); 
      rect(410, 415, 100, 20);  
      triangle(560, 290, 575, 260, 590, 290); 
      rect(565, 290, 20, 100);
    }
    //S  
    if (mouseX > 730 && mouseX < 780 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 190, 540, 175, 510, 160); 
      rect(410, 165, 100, 20);  
      triangle(610, 360, 625, 390, 640, 360);
      rect(615, 260, 20, 100);  
      triangle(440, 490, 410, 475, 440, 460); 
      rect(440, 465, 100, 20);
      triangle(310, 290, 325, 260, 340, 290); 
      rect(315, 290, 20, 100);
    } 
    //SPrime
    if (mouseX > 730 && mouseX < 780 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(440, 190, 410, 175, 440, 160); 
      rect(440, 165, 100, 20); 
      triangle(310, 360, 325, 390, 340, 360);
      rect(315, 260, 20, 100);
      triangle(510, 490, 540, 475, 510, 460); 
      rect(410, 465, 100, 20);  
      triangle(610, 290, 625, 260, 640, 290); 
      rect(615, 290, 20, 100);
    }
    //B 
    if (mouseX > 520 && mouseX < 570 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(440, 140, 410, 125, 440, 110); 
      rect(440, 115, 100, 20); 
      triangle(260, 360, 275, 390, 290, 360);
      rect(265, 260, 20, 100);
      triangle(510, 540, 540, 525, 510, 510); 
      rect(410, 515, 100, 20);  
      triangle(660, 290, 675, 260, 690, 290); 
      rect(665, 290, 20, 100);
    } 
    //BPrime
    if (mouseX > 520 && mouseX < 570 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(510, 140, 540, 125, 510, 110); 
      rect(410, 115, 100, 20);  
      triangle(660, 360, 675, 390, 690, 360);
      rect(665, 260, 20, 100);  
      triangle(440, 540, 410, 525, 440, 510); 
      rect(440, 515, 100, 20);
      triangle(260, 290, 275, 260, 290, 290); 
      rect(265, 290, 20, 100);
    } 
    //Y
    if (mouseX > 860 && mouseX < 910 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(440, 140, 410, 125, 440, 110); 
      rect(440, 115, 100, 20); 
      triangle(260, 360, 275, 390, 290, 360);
      rect(265, 260, 20, 100);
      triangle(510, 540, 540, 525, 510, 510); 
      rect(410, 515, 100, 20);  
      triangle(660, 290, 675, 260, 690, 290); 
      rect(665, 290, 20, 100); 
      triangle(440, 240, 410, 225, 440, 210); 
      rect(440, 215, 100, 20); 
      triangle(360, 360, 375, 390, 390, 360);
      rect(365, 260, 20, 100);
      triangle(510, 440, 540, 425, 510, 410); 
      rect(410, 415, 100, 20);  
      triangle(560, 290, 575, 260, 590, 290); 
      rect(565, 290, 20, 100); 
      triangle(440, 190, 410, 175, 440, 160); 
      rect(440, 165, 100, 20); 
      triangle(310, 360, 325, 390, 340, 360);
      rect(315, 260, 20, 100);
      triangle(510, 490, 540, 475, 510, 460); 
      rect(410, 465, 100, 20);  
      triangle(610, 290, 625, 260, 640, 290); 
      rect(615, 290, 20, 100);
    }
    //YPrime 
    if (mouseX > 860 && mouseX < 910 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(510, 140, 540, 125, 510, 110); 
      rect(410, 115, 100, 20);  
      triangle(660, 360, 675, 390, 690, 360);
      rect(665, 260, 20, 100);  
      triangle(440, 540, 410, 525, 440, 510); 
      rect(440, 515, 100, 20);
      triangle(260, 290, 275, 260, 290, 290); 
      rect(265, 290, 20, 100); 
      triangle(510, 240, 540, 225, 510, 210); 
      rect(410, 215, 100, 20);  
      triangle(560, 360, 575, 390, 590, 360);
      rect(565, 260, 20, 100);  
      triangle(440, 440, 410, 425, 440, 410); 
      rect(440, 415, 100, 20);
      triangle(360, 290, 375, 260, 390, 290); 
      rect(365, 290, 20, 100); 
      triangle(510, 190, 540, 175, 510, 160); 
      rect(410, 165, 100, 20);  
      triangle(610, 360, 625, 390, 640, 360);
      rect(615, 260, 20, 100);  
      triangle(440, 490, 410, 475, 440, 460); 
      rect(440, 465, 100, 20);
      triangle(310, 290, 325, 260, 340, 290); 
      rect(315, 290, 20, 100);
    }
  } 
  if (mode == 1) {
    for (int i = 0; i < leftSide.length; i++) {
      for (int j = 0; j < leftSide[0].length; j++) {
        fill(stringToColor(leftSide[i][j]));
        rect(250+j*50, 250+i*50, 50, 50);
      }
    } 
    for (int i = 0; i < frontSide.length; i++) {
      for (int j = 0; j < frontSide[0].length; j++) {
        fill(stringToColor(frontSide[i][j]));
        rect(400+j*50, 250+i*50, 50, 50);
      }
    }
    for (int i = 0; i < downSide.length; i++) {
      for (int j = 0; j < downSide[0].length; j++) {
        fill(stringToColor(downSide[i][j]));
        rect(400+j*50, 400+i*50, 50, 50);
      }
    } 
    //upside
    for (int i = 0; i < upSide.length; i++) {
      for (int j = 0; j < upSide[0].length; j++) {
        fill(stringToColor(upSide[i][j])); 
        quad(450+j*50-i*25, 150+i*50, 475+j*50-i*25, 100+i*50, 525+j*50-i*25, 100+i*50, 500+j*50-i*25, 150+i*50);
        //quad(450+j*50-i*30, 150+i*50, 475+j*50-i*30, 100+i*50, 525+j*50-i*30, 100+i*50, 500+j*50-i*30, 150+i*50);
      }
    }
    // quad(550,300, 550, 250, 575, 200, 575, 260);
    ///right side
    for (int i = 0; i < rightSide.length; i++) {
      for (int j = 0; j < rightSide[0].length; j++) {
        fill(stringToColor(rightSide[i][j]));
        quad(550+j*25, 300-j*50+i*50, 550+j*25, 250-j*50+i*50, 575+j*25, 200-j*50+i*50, 575+j*25, 250-j*50+i*50);
        //quad(550, 300, 550, 250, 575, 200, 575, 260);
        //quad(575, 260, 575, 200, 600, 150, 600, 220);
      }
    }
    //back side
    for (int i = 0; i < backSide.length; i++) {
      for (int j = 0; j < backSide[0].length; j++) {
        fill(stringToColor(backSide[i][j]));
        rect(625+j*50, 100+i*50, 50, 50);
      }
    }
    //quad(425, 200, 475, 200, 400, 250, 450, 250); 
    //quad(400,250,425,200, 475, 200, 450, 250);


    //L
    if (mouseX > 170 && mouseX < 220 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(410, 360, 425, 390, 440, 360);
      rect(415, 260, 20, 100); 
      rect(400, 250, 50, 150);
      rect(400, 400, 50, 150);
      rect(725, 100, 50, 150);
      quad(400, 250, 475, 100, 525, 100, 450, 250);
    } 
    //LPrime
    if (mouseX > 170 && mouseX < 220 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63); 
      triangle(410, 290, 425, 260, 440, 290); 
      rect(415, 290, 20, 100); 
      rect(400, 250, 50, 150);
      rect(400, 400, 50, 150);
      rect(725, 100, 50, 150);
      quad(400, 250, 475, 100, 525, 100, 450, 250);
    }
    //M  
    if (mouseX > 590 && mouseX < 640 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(460, 360, 475, 390, 490, 360);
      rect(465, 260, 20, 100);
      rect(450, 250, 50, 150);
      rect(450, 400, 50, 150);
      rect(675, 100, 50, 150);
      quad(450, 250, 525, 100, 575, 100, 500, 250);
    } 
    //MPrime
    if (mouseX > 590 && mouseX < 640 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63); 
      triangle(460, 290, 475, 260, 490, 290); 
      rect(465, 290, 20, 100);
      rect(450, 250, 50, 150);
      rect(450, 400, 50, 150);
      rect(675, 100, 50, 150);
      quad(450, 250, 525, 100, 575, 100, 500, 250);
    }
    //R 
    if (mouseX > 240 && mouseX < 290 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63); 
      triangle(510, 290, 525, 260, 540, 290); 
      rect(515, 290, 20, 100);
      rect(500, 250, 50, 150);
      rect(500, 400, 50, 150);
      rect(625, 100, 50, 150);
      quad(500, 250, 575, 100, 625, 100, 550, 250);
    } 
    //RPrime  
    if (mouseX > 240 && mouseX < 290 && mouseY > 800 && mouseY < 850) { 
      fill(0, 0, 0, 63);
      triangle(510, 360, 525, 390, 540, 360);
      rect(515, 260, 20, 100);
      rect(500, 250, 50, 150);
      rect(500, 400, 50, 150);
      rect(625, 100, 50, 150);
      quad(500, 250, 575, 100, 625, 100, 550, 250);
    } 
    //X  
    if (mouseX > 800 && mouseX < 850 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(410, 290, 425, 260, 440, 290); 
      rect(415, 290, 20, 100); 
      rect(400, 250, 50, 150);
      rect(400, 400, 50, 150);
      rect(725, 100, 50, 150);
      quad(400, 250, 475, 100, 525, 100, 450, 250);
      triangle(460, 290, 475, 260, 490, 290); 
      rect(465, 290, 20, 100);
      rect(450, 250, 50, 150);
      rect(450, 400, 50, 150);
      rect(675, 100, 50, 150);
      quad(450, 250, 525, 100, 575, 100, 500, 250);
      triangle(510, 290, 525, 260, 540, 290); 
      rect(515, 290, 20, 100); 
      rect(500, 250, 50, 150);
      rect(500, 400, 50, 150);
      rect(625, 100, 50, 150);
      quad(500, 250, 575, 100, 625, 100, 550, 250);
    }  
    //X' 
    if (mouseX > 800 && mouseX < 850 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(410, 360, 425, 390, 440, 360);
      rect(415, 260, 20, 100);
      rect(400, 250, 50, 150);
      rect(400, 400, 50, 150);
      rect(725, 100, 50, 150);
      quad(400, 250, 475, 100, 525, 100, 450, 250);
      triangle(460, 360, 475, 390, 490, 360);
      rect(465, 260, 20, 100);
      rect(450, 250, 50, 150);
      rect(450, 400, 50, 150);
      rect(675, 100, 50, 150);
      quad(450, 250, 525, 100, 575, 100, 500, 250);
      triangle(510, 360, 525, 390, 540, 360);
      rect(515, 260, 20, 100);
      rect(500, 250, 50, 150);
      rect(500, 400, 50, 150);
      rect(625, 100, 50, 150);
      quad(500, 250, 575, 100, 625, 100, 550, 250);
    } 
    //U
    if (mouseX > 310 && mouseX < 360 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(440, 290, 410, 275, 440, 260); 
      rect(440, 265, 100, 20);
      rect(250, 250, 150, 50);
      rect(400, 250, 150, 50); 
      quad(550, 300, 550, 250, 625, 100, 625, 150); 
      rect(625, 100, 150, 50);
    }  
    //UPrime 
    if (mouseX > 310 && mouseX < 360 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(510, 290, 540, 275, 510, 260); 
      rect(410, 265, 100, 20);
      rect(250, 250, 150, 50);
      rect(400, 250, 150, 50); 
      quad(550, 300, 550, 250, 625, 100, 625, 150); 
      rect(625, 100, 150, 50);
    } 
    //E 
    if (mouseX > 660 && mouseX < 710 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 340, 540, 325, 510, 310); 
      rect(410, 315, 100, 20);
      rect(250, 300, 150, 50);
      rect(400, 300, 150, 50); 
      quad(550, 350, 550, 300, 625, 150, 625, 200); 
      rect(625, 150, 150, 50);
    } 
    //EPrime 
    if (mouseX > 660 && mouseX < 710 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(440, 340, 410, 325, 440, 310); 
      rect(440, 315, 100, 20);
      rect(250, 300, 150, 50);
      rect(400, 300, 150, 50); 
      quad(550, 350, 550, 300, 625, 150, 625, 200); 
      rect(625, 150, 150, 50);
    } 
    //D 
    if (mouseX > 380 && mouseX < 420 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 390, 540, 375, 510, 360); 
      rect(410, 365, 100, 20);
      rect(250, 350, 150, 50);
      rect(400, 350, 150, 50); 
      quad(550, 400, 550, 350, 625, 200, 625, 250); 
      rect(625, 200, 150, 50);
    } 
    //DPrime 
    if (mouseX > 380 && mouseX < 420 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(440, 390, 410, 375, 440, 360); 
      rect(440, 365, 100, 20);
      rect(250, 350, 150, 50);
      rect(400, 350, 150, 50); 
      quad(550, 400, 550, 350, 625, 200, 625, 250); 
      rect(625, 200, 150, 50);
    } 
    //Z
    if (mouseX > 930 && mouseX < 980 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 290, 540, 275, 510, 260); 
      rect(410, 265, 100, 20);
      rect(250, 250, 150, 50);
      rect(400, 250, 150, 50); 
      quad(550, 300, 550, 250, 625, 100, 625, 150); 
      rect(625, 100, 150, 50); 
      triangle(510, 340, 540, 325, 510, 310); 
      rect(410, 315, 100, 20);
      rect(250, 300, 150, 50);
      rect(400, 300, 150, 50); 
      quad(550, 350, 550, 300, 625, 150, 625, 200); 
      rect(625, 150, 150, 50); 
      triangle(510, 390, 540, 375, 510, 360); 
      rect(410, 365, 100, 20);
      rect(250, 350, 150, 50);
      rect(400, 350, 150, 50); 
      quad(550, 400, 550, 350, 625, 200, 625, 250); 
      rect(625, 200, 150, 50);
    } 
    //ZPrime 
    if (mouseX > 930 && mouseX < 980 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(440, 290, 410, 275, 440, 260); 
      rect(440, 265, 100, 20);
      rect(250, 250, 150, 50);
      rect(400, 250, 150, 50); 
      quad(550, 300, 550, 250, 625, 100, 625, 150); 
      rect(625, 100, 150, 50); 
      triangle(440, 340, 410, 325, 440, 310); 
      rect(440, 315, 100, 20);
      rect(250, 300, 150, 50);
      rect(400, 300, 150, 50); 
      quad(550, 350, 550, 300, 625, 150, 625, 200); 
      rect(625, 150, 150, 50);  
      triangle(440, 390, 410, 375, 440, 360); 
      rect(440, 365, 100, 20);
      rect(250, 350, 150, 50);
      rect(400, 350, 150, 50); 
      quad(550, 400, 550, 350, 625, 200, 625, 250); 
      rect(625, 200, 150, 50);
    }
    //F
    if (mouseX > 450 && mouseX < 500 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(525, 240, 555, 225, 525, 210); 
      rect(425, 215, 100, 20);  
      quad(400, 250, 425, 200, 575, 200, 550, 250); 
      quad(550, 400, 550, 250, 575, 200, 575, 350);
      rect(400, 400, 150, 50); 
      rect(350, 250, 50, 150);
    } 
    //FPrime
    if (mouseX > 450 && mouseX < 500 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(455, 240, 425, 225, 455, 210); 
      rect(455, 215, 100, 20); 
      quad(400, 250, 425, 200, 575, 200, 550, 250); 
      quad(550, 400, 550, 250, 575, 200, 575, 350);
      rect(400, 400, 150, 50); 
      rect(350, 250, 50, 150);
    }
    //check 
    //S  
    if (mouseX > 730 && mouseX < 780 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(545, 190, 575, 175, 545, 160); 
      rect(445, 165, 100, 20);  
      quad(425, 200, 450, 150, 600, 150, 575, 200); 
      quad(575, 350, 575, 200, 600, 150, 600, 300);
      rect(400, 450, 150, 50); 
      rect(300, 250, 50, 150);
    } 
    //SPrime
    if (mouseX > 730 && mouseX < 780 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(475, 190, 445, 175, 475, 160); 
      rect(475, 165, 100, 20); 
      quad(425, 200, 450, 150, 600, 150, 575, 200); 
      quad(575, 350, 575, 200, 600, 150, 600, 300);
      rect(400, 450, 150, 50); 
      rect(300, 250, 50, 150);
    } 
    //B 
    if (mouseX > 520 && mouseX < 570 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(495, 140, 465, 125, 495, 110); 
      rect(495, 115, 100, 20); 
      quad(450, 150, 475, 100, 625, 100, 600, 150); 
      quad(600, 300, 600, 150, 625, 100, 625, 250);
      rect(400, 500, 150, 50); 
      rect(250, 250, 50, 150);
    } 
    //BPrime
    if (mouseX > 520 && mouseX < 570 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(565, 140, 595, 125, 565, 110); 
      rect(465, 115, 100, 20);  
      quad(450, 150, 475, 100, 625, 100, 600, 150); 
      quad(600, 300, 600, 150, 625, 100, 625, 250);
      rect(400, 500, 150, 50); 
      rect(250, 250, 50, 150);
    }
    //Y
    if (mouseX > 860 && mouseX < 910 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(455, 240, 425, 225, 455, 210); 
      rect(455, 215, 100, 20); 
      quad(400, 250, 425, 200, 575, 200, 550, 250); 
      quad(550, 400, 550, 250, 575, 200, 575, 350);
      rect(400, 400, 150, 50); 
      rect(350, 250, 50, 150);
      triangle(475, 190, 445, 175, 475, 160); 
      rect(475, 165, 100, 20); 
      quad(425, 200, 450, 150, 600, 150, 575, 200); 
      quad(575, 350, 575, 200, 600, 150, 600, 300);
      rect(400, 450, 150, 50); 
      rect(300, 250, 50, 150);
      triangle(495, 140, 465, 125, 495, 110); 
      rect(495, 115, 100, 20); 
      quad(450, 150, 475, 100, 625, 100, 600, 150); 
      quad(600, 300, 600, 150, 625, 100, 625, 250);
      rect(400, 500, 150, 50); 
      rect(250, 250, 50, 150);
    }
    //YPrime 
    if (mouseX > 860 && mouseX < 910 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63); 
      triangle(525, 240, 555, 225, 525, 210); 
      rect(425, 215, 100, 20);  
      quad(400, 250, 425, 200, 575, 200, 550, 250); 
      quad(550, 400, 550, 250, 575, 200, 575, 350);
      rect(400, 400, 150, 50); 
      rect(350, 250, 50, 150);  
      triangle(545, 190, 575, 175, 545, 160); 
      rect(445, 165, 100, 20);  
      quad(425, 200, 450, 150, 600, 150, 575, 200); 
      quad(575, 350, 575, 200, 600, 150, 600, 300);
      rect(400, 450, 150, 50); 
      rect(300, 250, 50, 150); 
      triangle(565, 140, 595, 125, 565, 110); 
      rect(465, 115, 100, 20);  
      quad(450, 150, 475, 100, 625, 100, 600, 150); 
      quad(600, 300, 600, 150, 625, 100, 625, 250);
      rect(400, 500, 150, 50); 
      rect(250, 250, 50, 150);
    }
  }
  if (mode == 2) { 
    for (int i = 0; i < upSide.length; i++) {
      for (int j = 0; j < upSide[0].length; j++) {
        fill(stringToColor(upSide[i][j]));
        // rect(400+j*50, 100+i*50, 50, 50);
        //quad(400, 250, 435, 220, 485, 230, 450, 260); 
        //quad(450+j*50-i*25, 150+i*50, 475+j*50-i*25, 100+i*50, 525+j*50-i*25, 100+i*50, 500+j*50-i*25, 150+i*50);
        quad(470+j*50-i*35, 190+j*10+i*30, 505+j*50-i*35, 160+j*10+i*30, 555+j*50-i*35, 170+j*10+i*30, 520+j*50-i*35, 200+j*10+i*30);
      }
    } 
    for (int i = 0; i < leftSide.length; i++) {
      for (int j = 0; j < leftSide[0].length; j++) {
        fill(stringToColor(leftSide[i][j]));
        //rect(250+j*50, 250+i*50, 50, 50);
        //quad(550+j*35,330-j*30+i*50,550+j*35,280-j*30+i*50,585+j*35,250-j*30+i*50,585+j*35,300-j*30+i*50); 
        //quad(355,180,355,130,320,160,320,210);
        //quad(250+j*35,270-j*30+i*50,250+j*35,220-j*30+i*50,285+j*35,190-j*30+i*50,285+j*35,240-j*30+i*50);
        quad(355-j*35, 180+j*30+i*50, 355-j*35, 130+j*30+i*50, 320-j*35, 160+j*30+i*50, 320-j*35, 210+j*30+i*50);
      }
    }
    for (int i = 0; i < frontSide.length; i++) {
      for (int j = 0; j < frontSide[0].length; j++) {
        fill(stringToColor(frontSide[i][j]));
        quad(400+j*50, 300+j*10+i*50, 400+j*50, 250+j*10+i*50, 450+j*50, 260+j*10+i*50, 450+j*50, 310+j*10+i*50);
        //rect(400+j*50, 250+i*50, 50, 50);
      }
    }
    for (int i = 0; i < rightSide.length; i++) {
      for (int j = 0; j < rightSide[0].length; j++) {
        fill(stringToColor(rightSide[i][j]));
        //rect(550+j*50, 250+i*50, 50, 50); 
        //quad(550+j*50, 230-j*10+i*50, 550+j*50, 180-j*10+i*50, 600+j*50, 170-j*10+i*50, 600+j*50, 220-j*10+i*50); 
        quad(550+j*35, 330-j*30+i*50, 550+j*35, 280-j*30+i*50, 585+j*35, 250-j*30+i*50, 585+j*35, 300-j*30+i*50); 
        //270
      }
    }
    for (int i = 0; i < backSide.length; i++) {
      for (int j = 0; j < backSide[0].length; j++) {
        fill(stringToColor(backSide[i][j]));
        //rect(700+j*50, 250+i*50, 50, 50); 
        //quad(700+j*50, 100+j*10+i*50, 700+j*50, 50+j*10+i*50, 750+j*50, 60+j*10+i*50, 750+j*50, 110+j*10+i*50);
        quad(850-j*50, 130-j*10+i*50, 850-j*50, 80-j*10+i*50, 800-j*50, 70-j*10+i*50, 800-j*50, 120-j*10+i*50);
      }
    }
    for (int i = 0; i < downSide.length; i++) {
      for (int j = 0; j < downSide[0].length; j++) {
        fill(stringToColor(downSide[i][j]));
        //rect(400+j*50, 400+i*50, 50, 50); 
        //quad(470+j*50-i*35, 490+j*10+i*30, 505+j*50-i*35, 460+j*10+i*30, 555+j*50-i*35, 470+j*10+i*30, 520+j*50-i*35, 500+j*10+i*30); 
        quad(435+j*50+i*35, 520+j*10-i*30, 400+j*50+i*35, 550+j*10-i*30, 450+j*50+i*35, 560+j*10-i*30, 485+j*50+i*35, 530+j*10-i*30);
      }
    }    
    for (int i = 0; i < upSide.length; i++) {
      for (int j = 0; j < upSide[0].length; j++) {
        fill(stringToColor(upSide[i][j]));
        // rect(400+j*50, 100+i*50, 50, 50);
        //quad(400, 250, 435, 220, 485, 230, 450, 260); 
        //quad(450+j*50-i*25, 150+i*50, 475+j*50-i*25, 100+i*50, 525+j*50-i*25, 100+i*50, 500+j*50-i*25, 150+i*50);
        quad(470+j*50-i*35, 190+j*10+i*30, 505+j*50-i*35, 160+j*10+i*30, 555+j*50-i*35, 170+j*10+i*30, 520+j*50-i*35, 200+j*10+i*30);
      }
    } 
    for (int i = 0; i < leftSide.length; i++) {
      for (int j = 0; j < leftSide[0].length; j++) {
        fill(stringToColor(leftSide[i][j]));
        //rect(250+j*50, 250+i*50, 50, 50);
        //quad(550+j*35,330-j*30+i*50,550+j*35,280-j*30+i*50,585+j*35,250-j*30+i*50,585+j*35,300-j*30+i*50); 
        //quad(355,180,355,130,320,160,320,210);
        //quad(250+j*35,270-j*30+i*50,250+j*35,220-j*30+i*50,285+j*35,190-j*30+i*50,285+j*35,240-j*30+i*50);
        quad(355-j*35, 180+j*30+i*50, 355-j*35, 130+j*30+i*50, 320-j*35, 160+j*30+i*50, 320-j*35, 210+j*30+i*50);
      }
    }
    for (int i = 0; i < frontSide.length; i++) {
      for (int j = 0; j < frontSide[0].length; j++) {
        fill(stringToColor(frontSide[i][j]));
        quad(400+j*50, 300+j*10+i*50, 400+j*50, 250+j*10+i*50, 450+j*50, 260+j*10+i*50, 450+j*50, 310+j*10+i*50);
        //rect(400+j*50, 250+i*50, 50, 50);
      }
    }
    for (int i = 0; i < rightSide.length; i++) {
      for (int j = 0; j < rightSide[0].length; j++) {
        fill(stringToColor(rightSide[i][j]));
        //rect(550+j*50, 250+i*50, 50, 50); 
        //quad(550+j*50, 230-j*10+i*50, 550+j*50, 180-j*10+i*50, 600+j*50, 170-j*10+i*50, 600+j*50, 220-j*10+i*50); 
        quad(550+j*35, 330-j*30+i*50, 550+j*35, 280-j*30+i*50, 585+j*35, 250-j*30+i*50, 585+j*35, 300-j*30+i*50); 
        //270
      }
    }
    for (int i = 0; i < backSide.length; i++) {
      for (int j = 0; j < backSide[0].length; j++) {
        fill(stringToColor(backSide[i][j]));
        //rect(700+j*50, 250+i*50, 50, 50); 
        //quad(700+j*50, 100+j*10+i*50, 700+j*50, 50+j*10+i*50, 750+j*50, 60+j*10+i*50, 750+j*50, 110+j*10+i*50);
        quad(850-j*50, 130-j*10+i*50, 850-j*50, 80-j*10+i*50, 800-j*50, 70-j*10+i*50, 800-j*50, 120-j*10+i*50);
      }
    }
    for (int i = 0; i < downSide.length; i++) {
      for (int j = 0; j < downSide[0].length; j++) {
        fill(stringToColor(downSide[i][j]));
        //rect(400+j*50, 400+i*50, 50, 50); 
        //quad(470+j*50-i*35, 490+j*10+i*30, 505+j*50-i*35, 460+j*10+i*30, 555+j*50-i*35, 470+j*10+i*30, 520+j*50-i*35, 500+j*10+i*30); 
        quad(435+j*50+i*35, 520+j*10-i*30, 400+j*50+i*35, 550+j*10-i*30, 450+j*50+i*35, 560+j*10-i*30, 485+j*50+i*35, 530+j*10-i*30);
      }
    } 
    //L
    if (mouseX > 170 && mouseX < 220 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(410, 360, 425, 390, 440, 360);
      rect(415, 260, 20, 100);  
      quad(400, 400, 400, 250, 450, 260, 450, 410);
      quad(400, 250, 505, 160, 555, 170, 450, 260); 
      quad(400, 550, 505, 460, 555, 470, 450, 560); 
      quad(700, 200, 700, 50, 750, 60, 750, 210);
    } 
    //LPrime
    if (mouseX > 170 && mouseX < 220 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63); 
      triangle(410, 290, 425, 260, 440, 290); 
      rect(415, 290, 20, 100); 
      quad(400, 400, 400, 250, 450, 260, 450, 410);
      quad(400, 250, 505, 160, 555, 170, 450, 260); 
      quad(400, 550, 505, 460, 555, 470, 450, 560); 
      quad(700, 200, 700, 50, 750, 60, 750, 210);
    } 
    //M
    if (mouseX > 590 && mouseX < 640 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(460, 370, 475, 400, 490, 370);
      rect(465, 270, 20, 100);
      quad(450, 410, 450, 260, 500, 270, 500, 420);
      quad(450, 260, 555, 170, 605, 180, 500, 270); 
      quad(450, 560, 555, 470, 605, 480, 500, 570); 
      quad(750, 210, 750, 60, 800, 70, 800, 220);
    } 
    //MPrime
    if (mouseX > 590 && mouseX < 640 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63); 
      triangle(460, 300, 475, 270, 490, 300); 
      rect(465, 300, 20, 100);
      quad(450, 410, 450, 260, 500, 270, 500, 420);
      quad(450, 260, 555, 170, 605, 180, 500, 270); 
      quad(450, 560, 555, 470, 605, 480, 500, 570); 
      quad(750, 210, 750, 60, 800, 70, 800, 220);
    }
    //R 
    if (mouseX > 240 && mouseX < 290 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63); 
      triangle(510, 310, 525, 280, 540, 310); 
      rect(515, 310, 20, 100);
      quad(500, 420, 500, 270, 550, 280, 550, 430);
      quad(500, 270, 605, 180, 655, 190, 550, 280); 
      quad(500, 570, 605, 480, 655, 490, 550, 580); 
      quad(800, 220, 800, 70, 850, 80, 850, 230);
    } 
    //RPrime  
    if (mouseX > 240 && mouseX < 290 && mouseY > 800 && mouseY < 850) { 
      fill(0, 0, 0, 63);
      triangle(510, 380, 525, 410, 540, 380);
      rect(515, 280, 20, 100);
      quad(500, 420, 500, 270, 550, 280, 550, 430);
      quad(500, 270, 605, 180, 655, 190, 550, 280); 
      quad(500, 570, 605, 480, 655, 490, 550, 580); 
      quad(800, 220, 800, 70, 850, 80, 850, 230);
    } 
    //X  
    if (mouseX > 800 && mouseX < 850 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63); 
      triangle(410, 290, 425, 260, 440, 290); 
      rect(415, 290, 20, 100); 
      quad(400, 400, 400, 250, 450, 260, 450, 410);
      quad(400, 250, 505, 160, 555, 170, 450, 260); 
      quad(400, 550, 505, 460, 555, 470, 450, 560); 
      quad(700, 200, 700, 50, 750, 60, 750, 210);  
      triangle(460, 300, 475, 270, 490, 300); 
      rect(465, 300, 20, 100);
      quad(450, 410, 450, 260, 500, 270, 500, 420);
      quad(450, 260, 555, 170, 605, 180, 500, 270); 
      quad(450, 560, 555, 470, 605, 480, 500, 570); 
      quad(750, 210, 750, 60, 800, 70, 800, 220); 
      triangle(510, 310, 525, 280, 540, 310); 
      rect(515, 310, 20, 100);
      quad(500, 420, 500, 270, 550, 280, 550, 430);
      quad(500, 270, 605, 180, 655, 190, 550, 280); 
      quad(500, 570, 605, 480, 655, 490, 550, 580); 
      quad(800, 220, 800, 70, 850, 80, 850, 230);
    }  
    //X' 
    if (mouseX > 800 && mouseX < 850 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(410, 360, 425, 390, 440, 360);
      rect(415, 260, 20, 100);  
      quad(400, 400, 400, 250, 450, 260, 450, 410);
      quad(400, 250, 505, 160, 555, 170, 450, 260); 
      quad(400, 550, 505, 460, 555, 470, 450, 560); 
      quad(700, 200, 700, 50, 750, 60, 750, 210); 
      triangle(460, 370, 475, 400, 490, 370);
      rect(465, 270, 20, 100);
      quad(450, 410, 450, 260, 500, 270, 500, 420);
      quad(450, 260, 555, 170, 605, 180, 500, 270); 
      quad(450, 560, 555, 470, 605, 480, 500, 570); 
      quad(750, 210, 750, 60, 800, 70, 800, 220);
      triangle(510, 380, 525, 410, 540, 380);
      rect(515, 280, 20, 100);
      quad(500, 420, 500, 270, 550, 280, 550, 430);
      quad(500, 270, 605, 180, 655, 190, 550, 280); 
      quad(500, 570, 605, 480, 655, 490, 550, 580); 
      quad(800, 220, 800, 70, 850, 80, 850, 230);
    } 
    //U
    if (mouseX > 310 && mouseX < 360 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(440, 305, 410, 290, 440, 275); 
      rect(440, 280, 100, 20);
      quad(400, 300, 400, 250, 550, 280, 550, 330);
      quad(550, 330, 550, 280, 655, 190, 655, 240); 
      quad(250, 270, 250, 220, 355, 130, 355, 180); 
      quad(700, 100, 700, 50, 850, 80, 850, 130);
    }  
    //UPrime 
    if (mouseX > 310 && mouseX < 360 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(510, 305, 540, 290, 510, 275); 
      rect(410, 280, 100, 20);
      quad(400, 300, 400, 250, 550, 280, 550, 330);
      quad(550, 330, 550, 280, 655, 190, 655, 240); 
      quad(250, 270, 250, 220, 355, 130, 355, 180); 
      quad(700, 100, 700, 50, 850, 80, 850, 130);
    }   
    //E 
    if (mouseX > 660 && mouseX < 710 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 355, 540, 340, 510, 325); 
      rect(410, 330, 100, 20);
      quad(400, 350, 400, 300, 550, 330, 550, 380);
      quad(550, 380, 550, 330, 655, 240, 655, 290); 
      quad(250, 320, 250, 270, 355, 180, 355, 230); 
      quad(700, 150, 700, 100, 850, 130, 850, 180);
    }
    //EPrime 
    if (mouseX > 660 && mouseX < 710 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(440, 355, 410, 340, 440, 320); 
      rect(440, 330, 100, 20);
      quad(400, 350, 400, 300, 550, 330, 550, 380);
      quad(550, 380, 550, 330, 655, 240, 655, 290); 
      quad(250, 320, 250, 270, 355, 180, 355, 230); 
      quad(700, 150, 700, 100, 850, 130, 850, 180);
    }  //D 
    if (mouseX > 380 && mouseX < 420 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 405, 540, 390, 510, 375); 
      rect(410, 380, 100, 20);
      quad(400, 400, 400, 350, 550, 380, 550, 430);
      quad(550, 430, 550, 380, 655, 290, 655, 340); 
      quad(250, 370, 250, 320, 355, 230, 355, 280); 
      quad(700, 200, 700, 150, 850, 180, 850, 230);
    } 
    //DPrime 
    if (mouseX > 380 && mouseX < 420 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(440, 405, 410, 390, 440, 375); 
      rect(440, 380, 100, 20);
      quad(400, 400, 400, 350, 550, 380, 550, 430);
      quad(550, 430, 550, 380, 655, 290, 655, 340); 
      quad(250, 370, 250, 320, 355, 230, 355, 280); 
      quad(700, 200, 700, 150, 850, 180, 850, 230);
    } 
    //Z
    if (mouseX > 930 && mouseX < 980 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(510, 305, 540, 290, 510, 275); 
      rect(410, 280, 100, 20);
      quad(400, 300, 400, 250, 550, 280, 550, 330);
      quad(550, 330, 550, 280, 655, 190, 655, 240); 
      quad(250, 270, 250, 220, 355, 130, 355, 180); 
      quad(700, 100, 700, 50, 850, 80, 850, 130); 
      triangle(510, 355, 540, 340, 510, 325); 
      rect(410, 330, 100, 20);
      quad(400, 350, 400, 300, 550, 330, 550, 380);
      quad(550, 380, 550, 330, 655, 240, 655, 290); 
      quad(250, 320, 250, 270, 355, 180, 355, 230); 
      quad(700, 150, 700, 100, 850, 130, 850, 180); 
      triangle(510, 405, 540, 390, 510, 375); 
      rect(410, 380, 100, 20);
      quad(400, 400, 400, 350, 550, 380, 550, 430);
      quad(550, 430, 550, 380, 655, 290, 655, 340); 
      quad(250, 370, 250, 320, 355, 230, 355, 280); 
      quad(700, 200, 700, 150, 850, 180, 850, 230);
    } 
    //ZPrime 
    if (mouseX > 930 && mouseX < 980 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(440, 305, 410, 290, 440, 275); 
      rect(440, 280, 100, 20);
      quad(400, 300, 400, 250, 550, 280, 550, 330);
      quad(550, 330, 550, 280, 655, 190, 655, 240); 
      quad(250, 270, 250, 220, 355, 130, 355, 180); 
      quad(700, 100, 700, 50, 850, 80, 850, 130);  
      triangle(440, 355, 410, 340, 440, 320); 
      rect(440, 330, 100, 20);
      quad(400, 350, 400, 300, 550, 330, 550, 380);
      quad(550, 380, 550, 330, 655, 240, 655, 290); 
      quad(250, 320, 250, 270, 355, 180, 355, 230); 
      quad(700, 150, 700, 100, 850, 130, 850, 180);
      triangle(440, 405, 410, 390, 440, 375); 
      rect(440, 380, 100, 20);
      quad(400, 400, 400, 350, 550, 380, 550, 430);
      quad(550, 430, 550, 380, 655, 290, 655, 340); 
      quad(250, 370, 250, 320, 355, 230, 355, 280); 
      quad(700, 200, 700, 150, 850, 180, 850, 230);
    }
    //F
    if (mouseX > 450 && mouseX < 500 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(495, 235, 510, 255, 465, 260); 
      //rect(425, 245, 100, 20);  
      quad(400, 250, 435, 220, 585, 250, 550, 280);
      quad(550, 430, 550, 280, 585, 250, 585, 400);
      quad(400, 550, 435, 520, 585, 550, 550, 580); 
      quad(250, 370, 250, 220, 285, 190, 285, 340);
    } 
    //FPrime
    if (mouseX > 450 && mouseX < 500 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(490, 265, 475, 242, 520, 240); 
      quad(400, 250, 435, 220, 585, 250, 550, 280);
      quad(550, 430, 550, 280, 585, 250, 585, 400);
      quad(400, 550, 435, 520, 585, 550, 550, 580); 
      quad(250, 370, 250, 220, 285, 190, 285, 340);
    }
    //S  
    if (mouseX > 730 && mouseX < 780 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(530, 205, 545, 225, 500, 230);
      //rect(445, 165, 100, 20);  
      quad(435, 220, 470, 190, 620, 220, 585, 250);
      quad(585, 400, 585, 250, 620, 220, 620, 370);
      quad(435, 520, 470, 490, 620, 520, 585, 550); 
      quad(285, 340, 285, 190, 320, 160, 320, 310);
    } 
    //SPrime
    if (mouseX > 730 && mouseX < 780 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(525, 235, 515, 212, 555, 210); 
      //rect(475, 165, 100, 20); 
      quad(435, 220, 470, 190, 620, 220, 585, 250);
      quad(585, 400, 585, 250, 620, 220, 620, 370);
      quad(435, 520, 470, 490, 620, 520, 585, 550); 
      quad(285, 340, 285, 190, 320, 160, 320, 310);
    } 
    //B 
    if (mouseX > 520 && mouseX < 570 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(560, 205, 550, 182, 590, 180); 
      //rect(495, 115, 100, 20); 
      quad(470, 190, 505, 160, 655, 190, 620, 220);
      quad(620, 370, 620, 220, 655, 190, 655, 340);
      quad(470, 490, 505, 460, 655, 490, 620, 520); 
      quad(320, 310, 320, 160, 355, 130, 355, 280);
    } 
    //BPrime
    if (mouseX > 520 && mouseX < 570 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(565, 175, 580, 195, 535, 200);
      //rect(465, 115, 100, 20);  
      quad(470, 190, 505, 160, 655, 190, 620, 220);
      quad(620, 370, 620, 220, 655, 190, 655, 340);
      quad(470, 490, 505, 460, 655, 490, 620, 520); 
      quad(320, 310, 320, 160, 355, 130, 355, 280);
    }
    //Y
    if (mouseX > 860 && mouseX < 910 && mouseY > 700 && mouseY < 750) {
      fill(0, 0, 0, 63);
      triangle(490, 265, 475, 242, 520, 240); 
      quad(400, 250, 435, 220, 585, 250, 550, 280);
      quad(550, 430, 550, 280, 585, 250, 585, 400);
      quad(400, 550, 435, 520, 585, 550, 550, 580); 
      quad(250, 370, 250, 220, 285, 190, 285, 340); 
      triangle(525, 235, 515, 212, 555, 210); 
      //rect(475, 165, 100, 20); 
      quad(435, 220, 470, 190, 620, 220, 585, 250);
      quad(585, 400, 585, 250, 620, 220, 620, 370);
      quad(435, 520, 470, 490, 620, 520, 585, 550); 
      quad(285, 340, 285, 190, 320, 160, 320, 310);
      triangle(560, 205, 550, 182, 590, 180); 
      //rect(495, 115, 100, 20); 
      quad(470, 190, 505, 160, 655, 190, 620, 220);
      quad(620, 370, 620, 220, 655, 190, 655, 340);
      quad(470, 490, 505, 460, 655, 490, 620, 520); 
      quad(320, 310, 320, 160, 355, 130, 355, 280);
    }
    //YPrime 
    if (mouseX > 860 && mouseX < 910 && mouseY > 800 && mouseY < 850) {
      fill(0, 0, 0, 63);
      triangle(495, 235, 510, 255, 465, 260); 
      //rect(425, 245, 100, 20);  
      quad(400, 250, 435, 220, 585, 250, 550, 280);
      quad(550, 430, 550, 280, 585, 250, 585, 400);
      quad(400, 550, 435, 520, 585, 550, 550, 580); 
      quad(250, 370, 250, 220, 285, 190, 285, 340); 
      triangle(530, 205, 545, 225, 500, 230);
      //rect(445, 165, 100, 20);  
      quad(435, 220, 470, 190, 620, 220, 585, 250);
      quad(585, 400, 585, 250, 620, 220, 620, 370);
      quad(435, 520, 470, 490, 620, 520, 585, 550); 
      quad(285, 340, 285, 190, 320, 160, 320, 310); 
      triangle(565, 175, 580, 195, 535, 200);
      //rect(465, 115, 100, 20);  
      quad(470, 190, 505, 160, 655, 190, 620, 220);
      quad(620, 370, 620, 220, 655, 190, 655, 340);
      quad(470, 490, 505, 460, 655, 490, 620, 520); 
      quad(320, 310, 320, 160, 355, 130, 355, 280);
    }
  }
  fill(255, 255, 255);
  //reset
  rect(0, 700, 150, 50);
  //scramble
  rect(0, 800, 150, 50);
  //L
  rect(170, 700, 50, 50);
  //Lprime
  rect(170, 800, 50, 50);
  //R
  rect(240, 700, 50, 50);
  //Rprime
  rect(240, 800, 50, 50);
  //U
  rect(310, 700, 50, 50);
  //Uprime
  rect(310, 800, 50, 50);
  //D
  rect(380, 700, 50, 50);
  //Dprime
  rect(380, 800, 50, 50);
  //F
  rect(450, 700, 50, 50);
  //Fprime
  rect(450, 800, 50, 50);
  //B
  rect(520, 700, 50, 50);
  //Bprime
  rect(520, 800, 50, 50);
  //M
  rect(590, 700, 50, 50);
  //Mprime
  rect(590, 800, 50, 50);
  //E
  rect(660, 700, 50, 50);
  //Eprime
  rect(660, 800, 50, 50);
  //S
  rect(730, 700, 50, 50);
  //Sprime
  rect(730, 800, 50, 50);
  //X
  rect(800, 700, 50, 50);
  //Xprime
  rect(800, 800, 50, 50);
  //Y
  rect(870, 700, 50, 50);
  //Yprime
  rect(870, 800, 50, 50);
  //Z
  rect(940, 700, 50, 50);
  //Zprime
  rect(940, 800, 50, 50);

  fill(stringToColor("orange"));
  //change to orange
  rect(0, 900, 50, 50);
  fill(stringToColor("white"));
  //change to white
  rect(50, 900, 50, 50);
  fill(stringToColor("red"));
  //change to red 
  rect(100, 900, 50, 50);
  fill(stringToColor("green"));
  //change to green
  rect(150, 900, 50, 50);
  fill(stringToColor("blue"));
  //change to blue
  rect(200, 900, 50, 50);
  fill(stringToColor("yellow"));
  //change to yellow 
  rect(250, 900, 50, 50);

  fill(0);
  textSize(25);
  text("Reset", 42, 730);
  text("Scramble", 10, 830);
  text("L", 188, 730);
  text("L'", 188, 830);
  text("R", 258, 730);
  text("R'", 258, 830);
  text("U", 328, 730);
  text("U'", 328, 830);
  text("D", 398, 730);
  text("D'", 398, 830);
  text("F", 468, 730);
  text("F'", 468, 830);
  text("B", 538, 730);
  text("B'", 538, 830);
  text("M", 608, 730);
  text("M'", 608, 830);
  text("E", 678, 730);
  text("E'", 678, 830);
  text("S", 748, 730);
  text("S'", 748, 830);
  text("X", 818, 730);
  text("X'", 818, 830);
  text("Y", 888, 730);
  text("Y'", 888, 830);
  text("Z", 958, 730);
  text("Z'", 958, 830);
}
void update() {
  //update the top side 
  upSide[0][0] = solveCube.getPiece(1, 1, 1).getCol()[2]; 
  upSide[0][1] = solveCube.getPiece(0, 1, 1).getCol()[2]; 
  upSide[0][2] = solveCube.getPiece(-1, 1, 1).getCol()[2]; 
  upSide[1][0] = solveCube.getPiece(1, 0, 1).getCol()[2]; 
  upSide[1][1] = solveCube.getPiece(0, 0, 1).getCol()[2]; 
  upSide[1][2] = solveCube.getPiece(-1, 0, 1).getCol()[2]; 
  upSide[2][0] = solveCube.getPiece(1, -1, 1).getCol()[2]; 
  upSide[2][1] = solveCube.getPiece(0, -1, 1).getCol()[2]; 
  upSide[2][2] = solveCube.getPiece(-1, -1, 1).getCol()[2];  
  //update the down side 
  downSide[0][0] = solveCube.getPiece(1, -1, -1).getCol()[2]; 
  downSide[0][1] = solveCube.getPiece(0, -1, -1).getCol()[2]; 
  downSide[0][2] = solveCube.getPiece(-1, -1, -1).getCol()[2]; 
  downSide[1][0] = solveCube.getPiece(1, 0, -1).getCol()[2]; 
  downSide[1][1] = solveCube.getPiece(0, 0, -1).getCol()[2]; 
  downSide[1][2] = solveCube.getPiece(-1, 0, -1).getCol()[2]; 
  downSide[2][0] = solveCube.getPiece(1, 1, -1).getCol()[2]; 
  downSide[2][1] = solveCube.getPiece(0, 1, -1).getCol()[2]; 
  downSide[2][2] = solveCube.getPiece(-1, 1, -1).getCol()[2]; 
  //update the front side 
  frontSide[0][0] = solveCube.getPiece(1, -1, 1).getCol()[1]; 
  frontSide[0][1] = solveCube.getPiece(0, -1, 1).getCol()[1]; 
  frontSide[0][2] = solveCube.getPiece(-1, -1, 1).getCol()[1]; 
  frontSide[1][0] = solveCube.getPiece(1, -1, 0).getCol()[1]; 
  frontSide[1][1] = solveCube.getPiece(0, -1, 0).getCol()[1]; 
  frontSide[1][2] = solveCube.getPiece(-1, -1, 0).getCol()[1]; 
  frontSide[2][0] = solveCube.getPiece(1, -1, -1).getCol()[1]; 
  frontSide[2][1] = solveCube.getPiece(0, -1, -1).getCol()[1]; 
  frontSide[2][2] = solveCube.getPiece(-1, -1, -1).getCol()[1]; 
  //update the back side
  backSide[0][0] = solveCube.getPiece(-1, 1, 1).getCol()[1]; 
  backSide[0][1] = solveCube.getPiece(0, 1, 1).getCol()[1]; 
  backSide[0][2] = solveCube.getPiece(1, 1, 1).getCol()[1]; 
  backSide[1][0] = solveCube.getPiece(-1, 1, 0).getCol()[1]; 
  backSide[1][1] = solveCube.getPiece(0, 1, 0).getCol()[1]; 
  backSide[1][2] = solveCube.getPiece(1, 1, 0).getCol()[1]; 
  backSide[2][0] = solveCube.getPiece(-1, 1, -1).getCol()[1]; 
  backSide[2][1] = solveCube.getPiece(0, 1, -1).getCol()[1]; 
  backSide[2][2] = solveCube.getPiece(1, 1, -1).getCol()[1]; 
  //update the left side 
  leftSide[0][0] = solveCube.getPiece(1, 1, 1).getCol()[0]; 
  leftSide[0][1] = solveCube.getPiece(1, 0, 1).getCol()[0]; 
  leftSide[0][2] = solveCube.getPiece(1, -1, 1).getCol()[0]; 
  leftSide[1][0] = solveCube.getPiece(1, 1, 0).getCol()[0]; 
  leftSide[1][1] = solveCube.getPiece(1, 0, 0).getCol()[0]; 
  leftSide[1][2] = solveCube.getPiece(1, -1, 0).getCol()[0]; 
  leftSide[2][0] = solveCube.getPiece(1, 1, -1).getCol()[0]; 
  leftSide[2][1] = solveCube.getPiece(1, 0, -1).getCol()[0]; 
  leftSide[2][2] = solveCube.getPiece(1, -1, -1).getCol()[0]; 
  //update right side
  rightSide[0][0] = solveCube.getPiece(-1, -1, 1).getCol()[0]; 
  rightSide[0][1] = solveCube.getPiece(-1, 0, 1).getCol()[0]; 
  rightSide[0][2] = solveCube.getPiece(-1, 1, 1).getCol()[0]; 
  rightSide[1][0] = solveCube.getPiece(-1, -1, 0).getCol()[0]; 
  rightSide[1][1] = solveCube.getPiece(-1, 0, 0).getCol()[0]; 
  rightSide[1][2] = solveCube.getPiece(-1, 1, 0).getCol()[0]; 
  rightSide[2][0] = solveCube.getPiece(-1, -1, -1).getCol()[0]; 
  rightSide[2][1] = solveCube.getPiece(-1, 0, -1).getCol()[0]; 
  rightSide[2][2] = solveCube.getPiece(-1, 1, -1).getCol()[0];
}  
