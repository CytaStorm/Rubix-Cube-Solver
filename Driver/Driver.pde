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


void keyPressed() {
  if (!solving) {
    switch(key) {
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
      solve(solveCube);
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
    } else if (mouseX > 175 && mouseX < 225 && mouseY > 700 && mouseY < 750) {
      solveCube.L();
    } else if (mouseX > 175 && mouseX < 225 && mouseY > 800 && mouseY < 850) {
      solveCube.LPrime();
    } else if (mouseX > 250 && mouseX < 300 && mouseY > 700 && mouseY < 750) {
      solveCube.R();
    } else if (mouseX > 250 && mouseX < 300 && mouseY > 800 && mouseY < 850) {
      solveCube.RPrime();
    } else if (mouseX > 325 && mouseX < 375 && mouseY > 700 && mouseY < 750) {
      solveCube.U();
    } else if (mouseX > 325 && mouseX < 375 && mouseY > 800 && mouseY < 850) {
      solveCube.UPrime();
    } else if (mouseX > 400 && mouseX < 450 && mouseY > 700 && mouseY < 750) {
      solveCube.D();
    } else if (mouseX > 400 && mouseX < 450 && mouseY > 800 && mouseY < 850) {
      solveCube.DPrime();
    } else if (mouseX > 475 && mouseX < 525 && mouseY > 700 && mouseY < 750) {
      solveCube.F();
    } else if (mouseX > 475 && mouseX < 525 && mouseY > 800 && mouseY < 850) {
      solveCube.FPrime();
    } else if (mouseX > 550 && mouseX < 600 && mouseY > 700 && mouseY < 750) {
      solveCube.B();
    } else if (mouseX > 550 && mouseX < 600 && mouseY > 800 && mouseY < 850) {
      solveCube.BPrime();
    }
  }
}

void draw() {
  background(128);
  text("mouseX: " + mouseX, 0, 50);
  text("mouseY: " + mouseY, 0, 100);
  text("Keyboard disabled: " + solving, 0, 150);
  update();
  display();
  fill(255, 255, 255);
  //reset
  rect(0, 700, 150, 50);
  //scramble
  rect(0, 800, 150, 50);
  //L
  rect(175, 700, 50, 50);
  //Lprime
  rect(175, 800, 50, 50);
  //R
  rect(250, 700, 50, 50);
  //Rprime
  rect(250, 800, 50, 50);
  //U
  rect(325, 700, 50, 50);
  //Uprime
  rect(325, 800, 50, 50);
  //D
  rect(400, 700, 50, 50);
  //Dprime
  rect(400, 800, 50, 50);
  //F
  rect(475, 700, 50, 50);
  //Fprime
  rect(475, 800, 50, 50);
  //B
  rect(550, 700, 50, 50);
  //Bprime
  rect(550, 800, 50, 50);

  fill(0);
  textSize(25);
  text("Reset", 42, 730);
  text("Scramble", 10, 830);
  text("L", 190, 730);
  text("L'", 190, 830);
  text("R", 265, 730);
  text("R'", 265, 830);
  text("U", 340, 730);
  text("U'", 340, 830);
  text("D", 415, 730);
  text("D'", 415, 830);
  text("F", 490, 730);
  text("F'", 490, 830);
  text("B", 565, 730);
  text("B'", 565, 830);
}
void move(Cube cube, String move) {
  String[] moves = move.split(" ", 0);

  for (String i : moves) {
    cube.solAdd(i);
    switch(i) {
    case "L": 
      solveCube.L();
      break;
    case "l": 
      solveCube.LPrime();
      break;
    case "R": 
      solveCube.R();
      break;
    case "r": 
      solveCube.RPrime();
      break;
    case "U": 
      solveCube.U();
      break;
    case "u": 
      solveCube.UPrime();
      break;
    case "D": 
      solveCube.D();
      break;
    case "d": 
      solveCube.DPrime();
      break;
    case "F": 
      solveCube.F();
      break;
    case "f": 
      solveCube.FPrime();
      break;
    case "B": 
      solveCube.B();
      break;
    case "b": 
      solveCube.BPrime();
      break;
    default: 
      break;
    }
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
void display() { 
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
void solve(Cube cube) {
  solving = true;
  cross(cube);
  //crossCorners(cube);
  //secondLayer(cube);
  //secondCross(cube);
  //edges(cube);
  //corners(cube);
  //print("solved!");
  solving = false;
}
void cross(Cube cube) {

  println("cross WIP!");
  Piece ulPiece = cube.findPiece(cube.getCol("U"), cube.getCol("L")); //finds pos of 4 edge pieces for up cross
  Piece urPiece = cube.findPiece(cube.getCol("U"), cube.getCol("R")); 
  Piece ubPiece = cube.findPiece(cube.getCol("U"), cube.getCol("B")); 
  Piece ufPiece = cube.findPiece(cube.getCol("U"), cube.getCol("F"));

  //println(ulPiece);
  //println(urPiece);
  //println(uuPiece);
  //println(udPiece);

  crossEdgeSolver(cube, ulPiece, cube.getPiece(1, 0, 0), "L L", "E L e l");
  crossEdgeSolver(cube, urPiece, cube.getPiece(-1, 0, 0), "R R", "e R E r");
  move(cube, "Z");
  crossEdgeSolver(cube, ubPiece, cube.getPiece(0, -1, 0), "L L", "E L e l");
  crossEdgeSolver(cube, ufPiece, cube.getPiece(0, 1, 0), "R R", "e R E r");
  move(cube, "z");
}
void crossEdgeSolver(Cube cube, Piece edgePiece, Piece facePiece, String move1, String move2) {
  println("crossEdgeSolver WIP"); 
  //checks if piece is in right place
  if (Arrays.equals(edgePiece.getPos(), edgePiece.getDesPos())) {
    println("In right place!");
    return;
  }
  String undoMove = null;
  String cw;
  String ccw;
  if (edgePiece.getPos()[2] == 0) {//if edge piece is in middle row
    int[] tempPos = edgePiece.getPos().clone();
    tempPos[0] = 0;
    cw = cube.faceRot(tempPos)[1];
    ccw = cube.faceRot(tempPos)[0];

    if (Arrays.equals(edgePiece.getPos(), new int[] {1, -1, 0}) || Arrays.equals(edgePiece.getPos(), new int[]{-1, 1, 0})) {
      move(cube, cw);
      undoMove = ccw;
    } else {
      move(cube, ccw);
      undoMove = cw;
    }
  } else if (edgePiece.getPos()[2] == 1) {
    int[] tempPos = edgePiece.getPos().clone();
    tempPos[2] = 0;
    cw = cube.faceRot(tempPos)[1];
    ccw = cube.faceRot(tempPos)[0];
    move(cube, ccw + " " + ccw);
    if (edgePiece.getPos()[0] != facePiece.getPos()[0]) {
      undoMove = cw + " " + cw;
    }
  }

  print("Is it in top? " + (edgePiece.getPos()[2] == -1));

  int count = 0;
  while (!Arrays.equals(new int[]{edgePiece.getPos()[0], edgePiece.getPos()[1]}, 
    new int[]{facePiece.getPos()[0], facePiece.getPos()[1]})) {
    move(cube, "B");
    count += 1;
    if (count == 10) {
      print("stuck in loop?");
    }
  }
  if (undoMove != null) {
    move(cube, undoMove);
  }
  if (edgePiece.getCol()[0] == facePiece.getCol()[0]) {
    move(cube, move1);
  } else {
    move(cube, move2);
  }
}
public void crossCorners(Cube cube) { 
  Piece cNW = cube.findPiece(cube.getCol("U"), cube.getCol("L"), cube.getCol("B"));
  Piece cNE = cube.findPiece(cube.getCol("U"), cube.getCol("R"), cube.getCol("B"));
  Piece cSW = cube.findPiece(cube.getCol("U"), cube.getCol("L"), cube.getCol("F"));
  Piece cSE = cube.findPiece(cube.getCol("U"), cube.getCol("R"), cube.getCol("F"));
  println("crossCorners WIP!");
} 

void crossCornerSolver(Cube cube, Piece corner, Piece right, Piece down) {
  int[] temp = corner.getPos(); 
  if (temp[2] == 1) {
    temp = corner.getPos(); 
    temp[0] = temp[2] = 0; 
    String [] moveSet = cube.faceRot(temp);
    String cW = moveSet[0];
    String cC = moveSet[1];  
    int count = 0; 
    String undo = cC; 
    while (temp[2] != -1) {
      cube.solAdd(cW); 
      count += 1;
    }
    if (count > 1) {
      for (int i = 0; i < count; i++) {
        cube.solAdd(cC);
      } 
      count = 0; 
      while (temp[2] != -1) {
        cube.solAdd(cC);
        count += 1;
      }
      undo = cW;
    }
    cube.solAdd("B"); 
    for (int i = 0; i < count; i++) {
      cube.solAdd(undo);
    }
  }
}
