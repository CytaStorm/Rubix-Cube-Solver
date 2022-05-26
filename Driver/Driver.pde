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
  size(1920, 1080);
  for (int i = 0; i < upSide.length; i++) {
    for (int j = 0; j < upSide[0].length; j++) {
      print("wip for assigning colors");
    }
  }
}
void update() {
  //update the top side 
  upSide[0][0] = solveCube.findPiece(1, 1, 1).getCol("z"); 
  upSide[0][1] = solveCube.findPiece(0, 1, 1).getCol("z"); 
  upSide[0][2] = solveCube.findPiece(-1, 1, 1).getCol("z"); 
  upSide[1][0] = solveCube.findPiece(1, 0, 1).getCol("z"); 
  upSide[1][1] = solveCube.findPiece(0, 0, 1).getCol("z"); 
  upSide[1][2] = solveCube.findPiece(-1, 0, 1).getCol("z"); 
  upSide[2][0] = solveCube.findPiece(1, -1, 1).getCol("z"); 
  upSide[2][1] = solveCube.findPiece(0, -1, 1).getCol("z"); 
  upSide[2][2] = solveCube.findPiece(-1, -1, 1).getCol("z");  
  //update the left side 
  leftSide[0][0] = solveCube.findPiece(1, 1, 1).getCol("x"); 
  leftSide[0][1] = solveCube.findPiece(1, 0, 1).getCol("x"); 
  leftSide[0][2] = solveCube.findPiece(1, -1, 1).getCol("x"); 
  leftSide[1][0] = solveCube.findPiece(1, 1, 0).getCol("x"); 
  leftSide[1][1] = solveCube.findPiece(1, 0, 0).getCol("x"); 
  leftSide[1][2] = solveCube.findPiece(1, -1, 0).getCol("x"); 
  leftSide[2][0] = solveCube.findPiece(1, 1, -1).getCol("x"); 
  leftSide[2][1] = solveCube.findPiece(1, 0, -1).getCol("x"); 
  leftSide[2][2] = solveCube.findPiece(1, -1, -1).getCol("x");
}  

void keyPressed() {
  if (key == 'q') {
    //left 
    solveCube.L();
  }
  if (key == 'a') {
    //left prime
    solveCube.LPrime();
  }
  if (key == 'w') {
    //right 
    solveCube.R();
  }
  if (key == 's') {
    //right prime
    solveCube.RPrime();
  } 
  if (key == 'e') {
    //up
    solveCube.U();
  }
  if (key == 'd') {
    //up prime 
    solveCube.UPrime();
  }  
  if (key == 'r') {
    //down
    solveCube.D();
  }
  if (key == 'f') {
    //down prime 
    solveCube.DPrime();
  } 
  if (key == 't') {
    //front 
    solveCube.F();
  }
  if (key == 'g') {
    //front prime
    solveCube.FPrime();
  } 
  if (key == 'y') {
    //back
    solveCube.B();
  }
  if (key == 'h') {
    //back prime 
    solveCube.BPrime();
  }
}
void display() { 
  for (int i = 0; i < upSide.length; i++) {
    for (int j = 0; j < upSide[0].length; j++) {
      System.out.println(upSide[i][j]);
    }
  } 
  for (int i = 0; i < leftSide.length; i++) {
    for (int j = 0; j < leftSide[0].length; j++) {
      System.out.println(leftSide[i][j]);
    }
  }
  for (int i = 0; i < frontSide.length; i++) {
    for (int j = 0; j < frontSide[0].length; j++) {
      System.out.println(frontSide[i][j]);
    }
  }
  for (int i = 0; i < rightSide.length; i++) {
    for (int j = 0; j < rightSide[0].length; j++) {
      System.out.println(rightSide[i][j]);
    }
  }
  for (int i = 0; i < backSide.length; i++) {
    for (int j = 0; j < backSide[0].length; j++) {
      System.out.println(backSide[i][j]);
    }
  }
  for (int i = 0; i < downSide.length; i++) {
    for (int j = 0; j < downSide[0].length; j++) {
      System.out.println(downSide[i][j]);
    }
  }
}
