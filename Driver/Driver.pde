import java.util.*;
Cube solveCube = new Cube(); 
boolean solving = false;
String[][] upSide = new String[3][3];
String[][] leftSide = new String[3][3];
String[][] frontSide = new String[3][3];
String[][] rightSide = new String[3][3];
String[][] backSide = new String[3][3];
String[][] downSide = new String[3][3];

void setup() {
  size(1000, 1000);
}
//void solve() {
//  solving = true; 
//  //cross(); 
//  crossCorners(solveCube);
//  //secondLayer(cube);
//  //secondCross(cube);
//  //edges(cube);
//  //corners(cube);
//  //print("solved!");
//  solving = false;
//}

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
void keyPressed() {
  if (!solving) {
    switch(key) { 
    case 'm': 
      if (mode == 1) {
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
    default: 
      break;
    }
  }
}

void mouseClicked() {
  if (!solving) {
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
  }
}

void draw() {
  background(128);
  text("mouseX: " + mouseX, 0, 50);
  text("mouseY: " + mouseY, 0, 100);
  text("Keyboard disabled: " + solving, 0, 150);
  text("Mode: " + mode, 0, 200);
  update();
  if (mode == 0) {
    for (int i = 0; i < upSide.length; i++) {
      for (int j = 0; j < upSide[0].length; j++) {
        fill(stringToColor(upSide[i][j]));
        rect(400+j*50, 100+i*50, 50, 50);
      }
    } 
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
    for (int i = 0; i < rightSide.length; i++) {
      for (int j = 0; j < rightSide[0].length; j++) {
        fill(stringToColor(rightSide[i][j]));
        rect(550+j*50, 250+i*50, 50, 50);
      }
    }
    for (int i = 0; i < backSide.length; i++) {
      for (int j = 0; j < backSide[0].length; j++) {
        fill(stringToColor(backSide[i][j]));
        rect(700+j*50, 250+i*50, 50, 50);
      }
    }
    for (int i = 0; i < downSide.length; i++) {
      for (int j = 0; j < downSide[0].length; j++) {
        fill(stringToColor(downSide[i][j]));
        rect(400+j*50, 400+i*50, 50, 50);
      }
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
        //quad(450+j*50-i*25, 150+i*50, 475+j*50-i*25, 100+i*50, 525+j*50-i*25, 100+i*50, 500+j*50-i*25, 150+i*50);
        quad(450+j*50-i*3, 150+i*50, 475+j*50-i*30, 100+i*50, 525+j*50-i*30, 100+i*50, 500+j*50-i*30, 150+i*50);
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
  if (mouseX > 170 && mouseX < 220 && mouseY > 700 && mouseY < 750) {
    triangle(410, 360, 425, 390, 440, 360);
    rect(415, 260, 20, 100);
  }
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
//void display() {
//  if (mode == 0) {
//    for (int i = 0; i < upSide.length; i++) {
//      for (int j = 0; j < upSide[0].length; j++) {
//        fill(stringToColor(upSide[i][j]));
//        rect(400+j*50, 100+i*50, 50, 50);
//      }
//    } 
//    for (int i = 0; i < leftSide.length; i++) {
//      for (int j = 0; j < leftSide[0].length; j++) {
//        fill(stringToColor(leftSide[i][j]));
//        rect(250+j*50, 250+i*50, 50, 50);
//      }
//    }
//    for (int i = 0; i < frontSide.length; i++) {
//      for (int j = 0; j < frontSide[0].length; j++) {
//        fill(stringToColor(frontSide[i][j]));
//        rect(400+j*50, 250+i*50, 50, 50);
//      }
//    }
//    for (int i = 0; i < rightSide.length; i++) {
//      for (int j = 0; j < rightSide[0].length; j++) {
//        fill(stringToColor(rightSide[i][j]));
//        rect(550+j*50, 250+i*50, 50, 50);
//      }
//    }
//    for (int i = 0; i < backSide.length; i++) {
//      for (int j = 0; j < backSide[0].length; j++) {
//        fill(stringToColor(backSide[i][j]));
//        rect(700+j*50, 250+i*50, 50, 50);
//      }
//    }
//    for (int i = 0; i < downSide.length; i++) {
//      for (int j = 0; j < downSide[0].length; j++) {
//        fill(stringToColor(downSide[i][j]));
//        rect(400+j*50, 400+i*50, 50, 50);
//      }
//    }
//  }
//  if (mode == 1) {
//    for (int i = 0; i < leftSide.length; i++) {
//      for (int j = 0; j < leftSide[0].length; j++) {
//        fill(stringToColor(leftSide[i][j]));
//        rect(250+j*50, 250+i*50, 50, 50);
//      }
//    } 
//    for (int i = 0; i < frontSide.length; i++) {
//      for (int j = 0; j < frontSide[0].length; j++) {
//        fill(stringToColor(frontSide[i][j]));
//        rect(400+j*50, 250+i*50, 50, 50);
//      }
//    }
//    for (int i = 0; i < downSide.length; i++) {
//      for (int j = 0; j < downSide[0].length; j++) {
//        fill(stringToColor(downSide[i][j]));
//        rect(400+j*50, 400+i*50, 50, 50);
//      }
//    } 
//    //upside
//    for (int i = 0; i < upSide.length; i++) {
//      for (int j = 0; j < upSide[0].length; j++) {
//        fill(stringToColor(upSide[i][j])); 
//        quad(450+j*50-i*25, 150+i*50, 475+j*50-i*25, 100+i*50, 525+j*50-i*25, 100+i*50, 500+j*50-i*25, 150+i*50);
//        //quad(400+j*50+i*25,250,425+j*50,200,475+j*50,200,450+j*50,250);
//      }
//    }
//    // quad(550,300, 550, 250, 575, 200, 575, 260);
//    ///right side
//    for (int i = 0; i < rightSide.length; i++) {
//      for (int j = 0; j < rightSide[0].length; j++) {
//        fill(stringToColor(rightSide[i][j]));
//        quad(550+j*25, 300-j*50+i*50, 550+j*25, 250-j*50+i*50, 575+j*25, 200-j*50+i*50, 575+j*25, 250-j*50+i*50);
//        //quad(550, 300, 550, 250, 575, 200, 575, 260);
//        //quad(575, 260, 575, 200, 600, 150, 600, 220);
//      }
//    }
//    //back side
//    for (int i = 0; i < backSide.length; i++) {
//      for (int j = 0; j < backSide[0].length; j++) {
//        fill(stringToColor(backSide[i][j]));
//        rect(625+j*50, 100+i*50, 50, 50);
//      }
//    }
//    //quad(425, 200, 475, 200, 400, 250, 450, 250); 
//    //quad(400,250,425,200, 475, 200, 450, 250);
//  }
//} 
