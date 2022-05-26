Cube solveCube = new Cube(); 
Cube refCube = new Cube(); 
ArrayList solutionSet = new ArrayList<String>(); 
//String[][] cubeColors = new String[9][12];
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

void update() {
  //update the top side 
  upSide[0][0] = solveCube.findPiece(1, 1, 1).getCol()[2]; 
  upSide[0][1] = solveCube.findPiece(0, 1, 1).getCol()[2]; 
  upSide[0][2] = solveCube.findPiece(-1, 1, 1).getCol()[2]; 
  upSide[1][0] = solveCube.findPiece(1, 0, 1).getCol()[2]; 
  upSide[1][1] = solveCube.findPiece(0, 0, 1).getCol()[2]; 
  upSide[1][2] = solveCube.findPiece(-1, 0, 1).getCol()[2]; 
  upSide[2][0] = solveCube.findPiece(1, -1, 1).getCol()[2]; 
  upSide[2][1] = solveCube.findPiece(0, -1, 1).getCol()[2]; 
  upSide[2][2] = solveCube.findPiece(-1, -1, 1).getCol()[2];  
  //update the down side 
  downSide[0][0] = solveCube.findPiece(1, -1, -1).getCol()[2]; 
  downSide[0][1] = solveCube.findPiece(0, -1, -1).getCol()[2]; 
  downSide[0][2] = solveCube.findPiece(-1, -1, -1).getCol()[2]; 
  downSide[1][0] = solveCube.findPiece(1, 0, -1).getCol()[2]; 
  downSide[1][1] = solveCube.findPiece(0, 0, -1).getCol()[2]; 
  downSide[1][2] = solveCube.findPiece(-1, 0, -1).getCol()[2]; 
  downSide[2][0] = solveCube.findPiece(1, 1, -1).getCol()[2]; 
  downSide[2][1] = solveCube.findPiece(0, 1, -1).getCol()[2]; 
  downSide[2][2] = solveCube.findPiece(-1, 1, -1).getCol()[2]; 
  //update the front side 
  frontSide[0][0] = solveCube.findPiece(1, -1, 1).getCol()[1]; 
  frontSide[0][1] = solveCube.findPiece(0, -1, 1).getCol()[1]; 
  frontSide[0][2] = solveCube.findPiece(-1, -1, 1).getCol()[1]; 
  frontSide[1][0] = solveCube.findPiece(1, -1, 0).getCol()[1]; 
  frontSide[1][1] = solveCube.findPiece(0, -1, 0).getCol()[1]; 
  frontSide[1][2] = solveCube.findPiece(-1, -1, 0).getCol()[1]; 
  frontSide[2][0] = solveCube.findPiece(1, -1, -1).getCol()[1]; 
  frontSide[2][1] = solveCube.findPiece(0, -1, -1).getCol()[1]; 
  frontSide[2][2] = solveCube.findPiece(-1, -1, -1).getCol()[1]; 
  //update the back side
  backSide[0][0] = solveCube.findPiece(-1, 1, 1).getCol()[1]; 
  backSide[0][1] = solveCube.findPiece(0, 1, 1).getCol()[1]; 
  backSide[0][2] = solveCube.findPiece(1, 1, 1).getCol()[1]; 
  backSide[1][0] = solveCube.findPiece(-1, 1, 0).getCol()[1]; 
  backSide[1][1] = solveCube.findPiece(0, 1, 0).getCol()[1]; 
  backSide[1][2] = solveCube.findPiece(1, 1, 0).getCol()[1]; 
  backSide[2][0] = solveCube.findPiece(-1, 1, -1).getCol()[1]; 
  backSide[2][1] = solveCube.findPiece(0, 1, -1).getCol()[1]; 
  backSide[2][2] = solveCube.findPiece(1, 1, -1).getCol()[1]; 
  //update the left side 
  leftSide[0][0] = solveCube.findPiece(1, 1, 1).getCol()[0]; 
  leftSide[0][1] = solveCube.findPiece(1, 0, 1).getCol()[0]; 
  leftSide[0][2] = solveCube.findPiece(1, -1, 1).getCol()[0]; 
  leftSide[1][0] = solveCube.findPiece(1, 1, 0).getCol()[0]; 
  leftSide[1][1] = solveCube.findPiece(1, 0, 0).getCol()[0]; 
  leftSide[1][2] = solveCube.findPiece(1, -1, 0).getCol()[0]; 
  leftSide[2][0] = solveCube.findPiece(1, 1, -1).getCol()[0]; 
  leftSide[2][1] = solveCube.findPiece(1, 0, -1).getCol()[0]; 
  leftSide[2][2] = solveCube.findPiece(1, -1, -1).getCol()[0]; 
  //update right side
  rightSide[0][0] = solveCube.findPiece(-1, -1, 1).getCol()[0]; 
  rightSide[0][1] = solveCube.findPiece(-1, 0, 1).getCol()[0]; 
  rightSide[0][2] = solveCube.findPiece(-1, 1, 1).getCol()[0]; 
  rightSide[1][0] = solveCube.findPiece(-1, -1, 0).getCol()[0]; 
  rightSide[1][1] = solveCube.findPiece(-1, 0, 0).getCol()[0]; 
  rightSide[1][2] = solveCube.findPiece(-1, 1, 0).getCol()[0]; 
  rightSide[2][0] = solveCube.findPiece(-1, -1, -1).getCol()[0]; 
  rightSide[2][1] = solveCube.findPiece(-1, 0, -1).getCol()[0]; 
  rightSide[2][2] = solveCube.findPiece(-1, 1, -1).getCol()[0];
}  

void keyPressed() {
  if (key == 'q') {
    //left 
    solveCube.L();
    //update();
  }
  if (key == 'a') {
    //left prime
    solveCube.LPrime();
    //update();
  }
  if (key == 'w') {
    //right 
    solveCube.R();
    //update();
  }
  if (key == 's') {
    //right prime
    solveCube.RPrime();
    //update();
  } 
  if (key == 'e') {
    //up
    solveCube.U();
    //update();
  }
  if (key == 'd') {
    //up prime 
    solveCube.UPrime();
    //update();
  }  
  if (key == 'r') {
    //down
    solveCube.D();
    //update();
  }
  if (key == 'f') {
    //down prime 
    solveCube.DPrime();
    //update();
  } 
  if (key == 't') {
    //front 
    solveCube.F();
    //update();
  }
  if (key == 'g') {
    //front prime
    solveCube.FPrime();
    //update();
  } 
  if (key == 'y') {
    //back
    solveCube.B();
    //update();
  }
  if (key == 'h') {
    //back prime 
    solveCube.BPrime();
    //update();
  }
}

void draw() {
  update();
  display();
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
