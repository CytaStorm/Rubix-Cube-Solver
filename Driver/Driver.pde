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
for(int i = 0; i < upSide.length; i++){
  for(int j = 0; j < upSide[0].length; j++){
    print("wip for assigning colors");
  }
}
void setup() {
}
void solve() {
}
void display() { 
  for(int i = 0; i < upSide.length; i++){
    for(int j = 0; j < upSide[0].length; j++){
      System.out.println(upSide[i][j]);
    }
  } 
  for(int i = 0; i < leftSide.length; i++){
    for(int j = 0; j < leftSide[0].length; j++){
      System.out.println(leftSide[i][j]);
    }
  }
  for(int i = 0; i < frontSide.length; i++){
    for(int j = 0; j < frontSide[0].length; j++){
      System.out.println(frontSide[i][j]);
    }
  }
  for(int i = 0; i < rightSide.length; i++){
    for(int j = 0; j < rightSide[0].length; j++){
      System.out.println(rightSide[i][j]);
    }
  }
  for(int i = 0; i < backSide.length; i++){
    for(int j = 0; j < backSide[0].length; j++){
      System.out.println(backSide[i][j]);
    }
  }
  for(int i = 0; i < downSide.length; i++){
    for(int j = 0; j < downSide[0].length; j++){
      System.out.println(downSide[i][j]);
    }
  }
}
