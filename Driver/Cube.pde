import java.util.*; //<>// //<>// //<>//
public class Cube {
  boolean solving;
  ArrayList solutionSet = new ArrayList<String>(); 
  private final int[] R = new int[] {
    -1, 0, 0
  };
  private final int[] L = new int[] {
    1, 0, 0
  };
  private final int[] U = new int[] {
    0, 0, 1
  };
  private final int[] D = new int[] {
    0, 0, -1
  };
  private final int[] F = new int[] {
    0, 1, 0
  };
  private final int[] B = new int[] {
    0, -1, 0
  };

  private Piece[] pieces = new Piece[26];
  public Cube() {
    //layer 1
    pieces[0] = new Piece(-1, -1, -1, "blue", "white", "red");
    pieces[1] = new Piece(0, -1, -1, null, "white", "red");
    pieces[2] = new Piece(1, -1, -1, "green", "white", "red");

    pieces[3] = new Piece(-1, 0, -1, "blue", null, "red");
    pieces[4] = new Piece(0, 0, -1, null, null, "red");
    pieces[5] = new Piece(1, 0, -1, "green", null, "red");

    pieces[6] = new Piece(-1, 1, -1, "blue", "yellow", "red");
    pieces[7] = new Piece(0, 1, -1, null, "yellow", "red");
    pieces[8] = new Piece(1, 1, -1, "green", "yellow", "red");

    //layer 2
    pieces[9] = new Piece(-1, -1, 0, "blue", "white", null);
    pieces[10] = new Piece(0, -1, 0, null, "white", null);
    pieces[11] = new Piece(1, -1, 0, "green", "white", null);

    pieces[12] = new Piece(-1, 0, 0, "blue", null, null);
    //skip center piece
    pieces[13] = new Piece(1, 0, 0, "green", null, null);

    pieces[14] = new Piece(-1, 1, 0, "blue", "yellow", null);
    pieces[15] = new Piece(0, 1, 0, null, "yellow", null);
    pieces[16] = new Piece(1, 1, 0, "green", "yellow", null);

    //layer 3
    pieces[17] = new Piece(-1, -1, 1, "blue", "white", "orange");
    pieces[18] = new Piece(0, -1, 1, null, "white", "orange");
    pieces[19] = new Piece(1, -1, 1, "green", "white", "orange");

    pieces[20] = new Piece(-1, 0, 1, "blue", null, "orange");
    pieces[21] = new Piece(0, 0, 1, null, null, "orange");
    pieces[22] = new Piece(1, 0, 1, "green", null, "orange");

    pieces[23] = new Piece(-1, 1, 1, "blue", "yellow", "orange");
    pieces[24] = new Piece(0, 1, 1, null, "yellow", "orange");
    pieces[25] = new Piece(1, 1, 1, "green", "yellow", "orange");

    solving = false;
  }

  //reset cube
  public void reset() {
    //layer 1
    pieces[0] = new Piece(-1, -1, -1, "blue", "white", "red");
    pieces[1] = new Piece(0, -1, -1, null, "white", "red");
    pieces[2] = new Piece(1, -1, -1, "green", "white", "red");

    pieces[3] = new Piece(-1, 0, -1, "blue", null, "red");
    pieces[4] = new Piece(0, 0, -1, null, null, "red");
    pieces[5] = new Piece(1, 0, -1, "green", null, "red");

    pieces[6] = new Piece(-1, 1, -1, "blue", "yellow", "red");
    pieces[7] = new Piece(0, 1, -1, null, "yellow", "red");
    pieces[8] = new Piece(1, 1, -1, "green", "yellow", "red");

    //layer 2
    pieces[9] = new Piece(-1, -1, 0, "blue", "white", null);
    pieces[10] = new Piece(0, -1, 0, null, "white", null);
    pieces[11] = new Piece(1, -1, 0, "green", "white", null);

    pieces[12] = new Piece(-1, 0, 0, "blue", null, null);
    //skip center piece
    pieces[13] = new Piece(1, 0, 0, "green", null, null);

    pieces[14] = new Piece(-1, 1, 0, "blue", "yellow", null);
    pieces[15] = new Piece(0, 1, 0, null, "yellow", null);
    pieces[16] = new Piece(1, 1, 0, "green", "yellow", null);

    //layer 3
    pieces[17] = new Piece(-1, -1, 1, "blue", "white", "orange");
    pieces[18] = new Piece(0, -1, 1, null, "white", "orange");
    pieces[19] = new Piece(1, -1, 1, "green", "white", "orange");

    pieces[20] = new Piece(-1, 0, 1, "blue", null, "orange");
    pieces[21] = new Piece(0, 0, 1, null, null, "orange");
    pieces[22] = new Piece(1, 0, 1, "green", null, "orange");

    pieces[23] = new Piece(-1, 1, 1, "blue", "yellow", "orange");
    pieces[24] = new Piece(0, 1, 1, null, "yellow", "orange");
    pieces[25] = new Piece(1, 1, 1, "green", "yellow", "orange");
  }
  //scrambles cube using 20 moves
  public void scramble() {
    int i = 0;
    while (i<20) {
      int picker = (int)(Math.random()*12);
      switch(picker) {
      case 0: 
        L();
        break;
      case 1: 
        LPrime();
        break;
      case 2: 
        R();
        break;
      case 3: 
        RPrime();
        break;
      case 4: 
        U();
        break;
      case 5: 
        UPrime();
        break;
      case 6: 
        D();
        break;
      case 7: 
        DPrime();
        break;
      case 8: 
        F();
        break;
      case 9: 
        FPrime();
        break;
      case 10: 
        B();
        break;
      case 11: 
        BPrime();
        break;
      default: 
        break;
      }
      i++;
    }
  }

  void move(String move) {
    switch(move) {
    case "L": 
      L();
      break;
    case "l": 
      LPrime();
      break;
    case "R": 
      R();
      break;
    case "r": 
      RPrime();
      break;
    case "U": 
      U();
      break;
    case "u": 
      UPrime();
      break;
    case "D": 
      D();
      break;
    case "d": 
      DPrime();
      break;
    case "F": 
      F();
      break;
    case "f": 
      FPrime();
      break;
    case "B": 
      B();
      break;
    case "b": 
      BPrime();
      break;
    default: 
      break;
    }
    println("move: " + move);
  }

  //finds piece given 2 colors
  public Piece findPiece(String col1, String col2) {
    for (int i = 0; i < 26; i++) {
      Integer col1Index = Arrays.asList(pieces[i].getCol()).indexOf(col1);
      Integer col2Index = Arrays.asList(pieces[i].getCol()).indexOf(col2);
      if (col1Index != -1 && col2Index != -1 && col1Index != col2Index && pieces[i].getCol()[3-col1Index-col2Index] == null) {
        return pieces[i];
      }
    }
    return null;
  }
  //finds piece given 3 colors
  public Piece findPiece(String col1, String col2, String col3) {
    for (int i = 0; i < 26; i++) {
      Integer col1Index = Arrays.asList(pieces[i].getCol()).indexOf(col1);
      Integer col2Index = Arrays.asList(pieces[i].getCol()).indexOf(col2);
      Integer col3Index = Arrays.asList(pieces[i].getCol()).indexOf(col3);
      if (col1Index != -1 && col2Index != -1 && col3Index != -1 && 
        col1Index != col2Index && col2Index != col3Index && col1Index != col3Index) {
        return pieces[i];
      }
    }
    return null;
  }

  //gets piece at position  x y z
  public Piece getPiece(int x, int y, int z) {

    for (int i = 0; i < 26; i++) {

      if (pieces[i].getPos()[0] == x &&
        pieces[i].getPos()[1] == y && 
        pieces[i].getPos()[2] == z) { 
        return pieces[i];
      }
    }
    println(x);
    println(y);
    println(z);
    println("not found a piece");
    return null;
  }

  //gets piece at element Piece
  public Piece getPiece(int i) {
    return pieces[i];
  }
  //accessor method: returns color of face given a face, each face will always be 1 color
  public String getCol(String face) {
    switch(face) {
    case "U" : 
      return getPiece(0, 0, 1).col[2];
    case "F" : 
      return getPiece(0, -1, 0).col[1];
    case "R" : 
      return getPiece(-1, 0, 0).col[0];
    case "L" : 
      return getPiece(1, 0, 0).col[0];
    case "B" : 
      return getPiece(0, 1, 0).col[1];
    case "D" : 
      return getPiece(0, 0, -1).col[2];
    default : 
      print("you shouldn't be here! put in a valid face U/F/R/L/B/D to get its color!");
      return null;
    }
  }

  //accessor for solutionset
  public ArrayList<String> solutionSet() {
    return solutionSet;
  }
  public void solAdd(String addition) {
    solutionSet.add(addition);
  }
  public void solRemoveLast() {
    if (solutionSet.size() > 0) {
      solutionSet.remove(solutionSet.size()-1);
    } else {
      print("nothing left to remove!");
    }
  }
  //gets rotation from face
  public String[] faceRot(int[]pos) {
    String[] returnMoves = new String[2];
    if (Arrays.equals(pos, R)) {
      returnMoves[0] = "R";
      returnMoves[1] = "r";
    } else if (Arrays.equals(pos, L)) {
      returnMoves[0] = "L";
      returnMoves[1] = "l";
    } else if (Arrays.equals(pos, F)) {
      returnMoves[0] = "F";
      returnMoves[1] = "f";
    } else if (Arrays.equals(pos, B)) {
      returnMoves[0] = "B";
      returnMoves[1] = "b";
    } else if (Arrays.equals(pos, D)) {
      returnMoves[0] = "D";
      returnMoves[1] = "d";
    } else if (Arrays.equals(pos, U)) {
      returnMoves[0] = "U";
      returnMoves[1] = "u";
    } else {
      println("invalid face");
      return null;
    }
    return returnMoves;
  } 

  //accessor to get solving state
  public boolean isSolving() {
    return solving;
  } 
  public void L() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[0] == 1) {
        pieces[i].rotateXCW();
      }
    }
  } 
  public void LPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[0] == 1) {
        pieces[i].rotateXCCW();
      }
    }
  }
  public void RPrime() {
    // println("R used");
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[0] == -1) {
        pieces[i].rotateXCW();
      }
    }
  } 
  public void R() {
    // println("RPrime used");
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[0] == -1) {
        pieces[i].rotateXCCW();
      }
    }
  } 
  public void U() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[2] == 1) {
        pieces[i].rotateZCW();
      }
    }
  } 
  public void UPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[2] == 1) {
        pieces[i].rotateZCCW();
      }
    }
  }
  public void D() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[2] == -1) {
        pieces[i].rotateZCW();
      }
    }
  }
  public void DPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[2] == -1) {
        pieces[i].rotateZCCW();
      }
    }
  }
  public void F() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[1] == -1) {
        pieces[i].rotateYCW();
      }
    }
  }
  public void FPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[1] == -1) {
        pieces[i].rotateYCCW();
      }
    }
  }
  public void B() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[1] == 1) {
        pieces[i].rotateYCW();
      }
    }
  }
  public void BPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[1] == 1) {
        pieces[i].rotateYCCW();
      }
    }
  }
  public void M() {
    // println("m is called");
    Piece frontPiece = getPiece(0, -1, 0); 
    String frontCol = frontPiece.getCol()[1]; 
    Piece topPiece = getPiece(0, 0, 1); 
    String topCol = topPiece.getCol()[2]; 
    Piece backPiece = getPiece(0, 1, 0); 
    String backCol = backPiece.getCol()[1]; 
    Piece downPiece = getPiece(0, 0, -1); 
    String downCol = downPiece.getCol()[2]; 
    frontPiece.swapFaceColor("y", topCol); 
    topPiece.swapFaceColor("z", backCol); 
    backPiece.swapFaceColor("y", downCol); 
    downPiece.swapFaceColor("z", frontCol); 
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[0] == 0 && pieces[i].getPos()[1] != 0 && pieces[i].getPos()[2] != 0) {
        pieces[i].rotateXCW();
      }
    }
  }
  public void MPrime() {
    Piece frontPiece = getPiece(0, -1, 0); 
    String frontCol = frontPiece.getCol()[1]; 
    Piece topPiece = getPiece(0, 0, 1); 
    String topCol = topPiece.getCol()[2]; 
    Piece backPiece = getPiece(0, 1, 0); 
    String backCol = backPiece.getCol()[1]; 
    Piece downPiece = getPiece(0, 0, -1); 
    String downCol = downPiece.getCol()[2]; 
    frontPiece.swapFaceColor("y", downCol); 
    topPiece.swapFaceColor("z", frontCol); 
    backPiece.swapFaceColor("y", topCol); 
    downPiece.swapFaceColor("z", backCol); 
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[0] == 0 && pieces[i].getPos()[1] != 0 && pieces[i].getPos()[2] != 0) {
        pieces[i].rotateXCCW();
      }
    }
  }
  public void E() {
    Piece frontPiece = getPiece(0, -1, 0); 
    String frontCol = frontPiece.getCol()[1]; 
    Piece rightPiece = getPiece(-1, 0, 0); 
    String rightCol = rightPiece.getCol()[0]; 
    Piece backPiece = getPiece(0, 1, 0); 
    String backCol = backPiece.getCol()[1]; 
    Piece leftPiece = getPiece(1, 0, 0); 
    String leftCol = leftPiece.getCol()[0]; 
    frontPiece.swapFaceColor("y", leftCol); 
    rightPiece.swapFaceColor("x", frontCol); 
    backPiece.swapFaceColor("y", rightCol); 
    leftPiece.swapFaceColor("x", backCol); 
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[2] == 0 && pieces[i].getPos()[0] != 0 && pieces[i].getPos()[1] != 0) {
        pieces[i].rotateZCCW();
      }
    }
  }
  public void EPrime() {
    Piece frontPiece = getPiece(0, -1, 0); 
    String frontCol = frontPiece.getCol()[1]; 
    Piece rightPiece = getPiece(-1, 0, 0); 
    String rightCol = rightPiece.getCol()[0]; 
    Piece backPiece = getPiece(0, 1, 0); 
    String backCol = backPiece.getCol()[1]; 
    Piece leftPiece = getPiece(1, 0, 0); 
    String leftCol = leftPiece.getCol()[0]; 
    frontPiece.swapFaceColor("y", rightCol); 
    rightPiece.swapFaceColor("x", backCol); 
    backPiece.swapFaceColor("y", leftCol); 
    leftPiece.swapFaceColor("x", frontCol); 
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[2] == 0 && pieces[i].getPos()[0] != 0 && pieces[i].getPos()[1] != 0) {
        pieces[i].rotateZCW();
      }
    }
  } 
  public void S() {
    Piece upPiece = getPiece(0, 0, 1); 
    String upCol = upPiece.getCol()[2]; 
    Piece rightPiece = getPiece(-1, 0, 0); 
    String rightCol = rightPiece.getCol()[0]; 
    Piece downPiece = getPiece(0, 0, -1); 
    String downCol = downPiece.getCol()[2]; 
    Piece leftPiece = getPiece(1, 0, 0); 
    String leftCol = leftPiece.getCol()[0]; 
    upPiece.swapFaceColor("z", leftCol); 
    rightPiece.swapFaceColor("x", upCol); 
    downPiece.swapFaceColor("z", rightCol); 
    leftPiece.swapFaceColor("x", downCol); 
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[1] == 0 && pieces[i].getPos()[0] != 0 && pieces[i].getPos()[2] != 0) {
        pieces[i].rotateYCW();
      }
    }
  } 
  public void SPrime() {
    Piece upPiece = getPiece(0, 0, 1); 
    String upCol = upPiece.getCol()[2]; 
    Piece rightPiece = getPiece(-1, 0, 0); 
    String rightCol = rightPiece.getCol()[0]; 
    Piece downPiece = getPiece(0, 0, -1); 
    String downCol = downPiece.getCol()[2]; 
    Piece leftPiece = getPiece(1, 0, 0); 
    String leftCol = leftPiece.getCol()[0]; 
    upPiece.swapFaceColor("z", rightCol); 
    rightPiece.swapFaceColor("x", downCol); 
    downPiece.swapFaceColor("z", leftCol); 
    leftPiece.swapFaceColor("x", upCol); 
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[1] == 0 && pieces[i].getPos()[0] != 0 && pieces[i].getPos()[2] != 0) {
        pieces[i].rotateYCCW();
      }
    }
  }
  public void X() {
    RPrime(); 
    MPrime(); 
    LPrime();
  }
  public void XPrime() {
    L(); 
    M(); 
    RPrime();
  }
  public void Z() {
    UPrime();
    E(); 
    DPrime();
  } 
  public void ZPrime() {
    U(); 
    EPrime(); 
    D();
  }
  public void Y() {
    FPrime(); 
    SPrime(); 
    BPrime();
  }
  public void YPrime() {
    F(); 
    S(); 
    B();
  }
  void solve() {
    solving = true; 
    //cross(); 
    //crossCorners(solveCube);
    //secondLayer(cube);
    //secondCross(cube);
    //edges(cube);
    //corners(cube);
    //print("solved!");
    solving = false;
  }


  //boolean isWhiteCorner(Piece corner) {
  //  return ((corner.isCorner() && corner.getCol()[0] == "white")  || 
  //    (corner.isCorner() && corner.getCol()[1] == "white") || 
  //    (corner.isCorner() && corner.getCol()[2] == "white"));
  //}  
  //boolean isCornersIns(int x, int y, int z) {
  //  if (getPiece(x, y, z).isCorner()) {
  //    return(getPiece(x, y, z).getDir(x,y,z,) == getPiece(1,1,2
  //  }
  //} 
  //boolean checkWhiteInU() {
  //  for (int i = 0; i < pieces.length; i++) {
  //    if (pieces[i].isCorner()) {
  //      return (pieces[i].getCol()[0] ==
  //    }
  //  }
  //}
  //boolean preparedWhiteCorners(Cube cube){
  //  if(cube.getPiece(2,0,0).isCorner() && cube.getPiece(2,0,0).getDir()
  //}
  //void insertCorners() {
  //  for (int i = 0; i < 26; i++) {
  //    if (pieces[i].isCorner() && isWhiteCorner(pieces[i])) {
  //      if (pieces[i].getPos()[0] == 0) {
  //        if (pieces[i].getPos()[2] == 0) {
  //          move("UPrime");
  //        } else {
  //          move("U"); 
  //            move("U");
  //        }
  //      } else {
  //        if (pieces[i].getPos()[2] == 2) {
  //          move("U");
  //        }
  //      }
  //      int uTurns = 0; 
  //        int yRot = 0; 
  //        while
  //    }
  //  }
  //} 
  void cross() {
    poppy();
    println("finished poppy");
    makeCross();
    println("finished cross");
  }
  void poppy() {
    //moves all orange edges to bottom regardless of orientation
    while (poppySemiOriented() < 4) {
      for (int j = 0; j < 4; j++) { // if edge piece has red color while on at -1, 0, -1 
        for (int i = 0; i < pieces.length; i++) {
          // println("line 562 debug: " + i);
          // println(pieces[i].isEdge());
          Piece current = pieces[i]; 
          if (current.isEdge() && current.hasColor("orange") && current.xPos() == -1 && current.zPos() != -1) {
            move("R");
          }
        }
      }
      Z();
    }
  }

  // println("finished using semiPoppy");

  X();
  X();
  // fixes all orientation of orange edges
  while (poppyFullOriented() < 4) {
    for (int j = 0; j < 4; j++) { 
      for (int i = 0; i < pieces.length; i++) {
        Piece current = pieces[i];
        if (current.isEdge() && Arrays.equals(current.getPos(), new int[] {-1, 0, 1})) {
          if (current.hasColor("orange") && !(current.zCol().equals("orange"))) {
            move("r");
            move("U");
            move("f");
          }
        }
      }
      Z();
    }
  }

  ///finish petals

  return;
}

//poppy helpers
//counts fully correct petals
int poppyFullOriented() {
  int result = 0; 
  for (int i = 0; i < pieces.length; i++) {
    Piece current = pieces[i];
    if (current.isEdge() && current.zPos() == 1) {
      if (current.zCol() != null && current.zCol().equals("orange")) {
        result++;
      }
    }
  }
  return result;
}
//counts petal in right pos, but wrong color
int poppySemiOriented() {
  int result = 0; 
  for (int i = 0; i < pieces.length; i++) {
    Piece current = pieces[i];
    if (current.isEdge() && current.zPos() == -1) {
      if (current.zCol() != null && current.hasColor("orange")) {
        result++;
      }
    }
  }
  return result;
}
//makes space for algorithm
int makeSpace(int x, int y, int z, String col) { 
  // println("makeSpace called");
  int dTurnsMade = 0;
  Piece tempPiece = getPiece(x, y, z);
  while (tempPiece.hasColor(col)) {
    move("D");
    tempPiece = getPiece(x, y, z);
    dTurnsMade++;
  }
  return dTurnsMade;
}


//makes cross
void makeCross() {
  for (int i = 0; i < 4; i++) {
    // Piece current = getPiece(-1, 0, 1);
    while (!isOriented(-1, 0, 1)) {
      U();
      // println(isOriented(-1, 0, 1));
      // println(getPiece(-1, 0, 1));
    }
    move("R");
    move("R");
    Z();
  }
  XPrime();
  XPrime();
}
//checks if piece is oriented correctly
boolean isOriented(int x, int y, int z) {
  Piece current = getPiece(x, y, z);
  return current.zCol().equals("orange") && current.xCol().equals(getPiece(-1, 0, 0).xCol());
}

//secondLayer
void secondLayer() {
  X();
  X();
  secondLayerHelper();
  for (int i = 0; i < pieces.length; i ++) {
    Piece current = pieces[i];

    if (current.isEdge() && current.zPos() == 0) {

      if (!current.hasColor("red")) {
        // println(current);
        moveToTop(current.getPos());
        secondLayerHelper();
      }
    }
  }
}
void secondLayerHelper() {
  for (int i = 0; i < 4; i++) { //goes through each of the 4 edge pieces on the cube and puts them in the right spot if possible, results in only red edge pieces on top
    if (noRed()) {
      Piece current = getPiece(0, -1, 1);
      String targetColor = current.xCol();
      // println(current);
      while (!makesVertLine()) {
        moveBottom();
      }
      if (isAdjacentLeft()) {
        leftAlgo();
        i--;
      } else {
        rightAlgo();
        i--;
      }
    }
    U();
  }
}
boolean inRightPlace(Piece piece) {
  return 
    piece.xCol().equals(getPiece(piece.xPos(), 0, 0).xCol()) &&
    piece.yCol().equals(getPiece(0, piece.yPos(), 0).yCol());
  // &&
  // piece.xCol().equals(getPiece(piece.xPos(), 0, 0).xCol()) &&
  // piece.yCol().equals(getPiece(piece.xPos(), 0, 0).yCol());
}
boolean noRed() {
  return !getPiece(0, -1, 1).hasColor("red");
}

boolean isAdjacentLeft() {
  return getPiece(0, -1, 1).zCol().equals(getPiece(1, 0, 0).xCol());
}
boolean isAdjacentRight() {
  return getPiece(0, -1, 1).zCol().equals(getPiece(-1, 0, 0).xCol());
}
boolean makesVertLine() {
  return getPiece(0, -1, 1).yCol().equals(getPiece(0, -1, 0).yCol());
}
void leftAlgo() {
  // println("use left algo");
  move("u");
  move("l");
  move("U");
  move("L");
  move("U");
  move("F");
  move("u");
  move("f");
}
void rightAlgo() {
  // println("use right algo");
  move("U");
  move("R");
  move("u");
  move("r");
  move("u");
  move("f");
  move("U");
  move("F");
}
void moveBottom() {
  D();
  EPrime();
}
void moveToTop(int[] pos) {
  Piece current = getPiece(pos[0], pos[1], pos[2]);
  // println("moveToTop");
  // println(current);
  while (current.yPos() != -1) {
    Z();
    // println("rotZ");
    // println(current);
    current = findPiece(current.xCol(), current.yCol());
  }

  if (current.xPos() == -1) {
    rightAlgo();
  } else {
    leftAlgo();
  }
}

//see if there's any wrong corners on top and move it down
void checkCornersOnTop() {
  for (int i = 0; i < pieces.length; i ++) {
    if (isOrangeCorner(pieces[i]) && pieces[i].zPos() == 1) {
      if (pieces[i].xCol() != getCol("F") || (pieces[i].yCol() != getCol("R"))) {
        move("r"); 
        move("d");
        move("R");
      }
    }
  }
}
boolean isOrangeCorner(Piece corner) {
  return ((corner.isCorner() && corner.getCol()[0] == "orange")  || 
    (corner.isCorner() && corner.getCol()[1] == "orange") || 
    (corner.isCorner() && corner.getCol()[2] == "orange"));
} 
int allOrangeCorners() {
  int ans = 0;
  for (int i = 0; i < pieces.length; i++) {
    if (isOrangeCorner(pieces[i])) {
      ans += 1;
    }
  }
  return ans;
}

boolean isOrientated(Piece corner) {
  return(isOrangeCorner(corner) && corner.zPos() == -1);
} 
//public String getColorofFace(String dir) {
//  String ans = ""; 
//  for (int i = 0; i < pieces.length; i ++) {
//    if (pieces[i].isFace()) {
//      for (String j : pieces[i].getCol()) {
//        if (j != null) {
//          ans = j;
//        }
//      }
//    }
//  }
//  return ans;
//}
//check if the corner piece's two colors is next to the corresponding faces
//boolean isPlacedFaceRight(Piece corner) {
//  return (corner.xCol().equals(getPiece(0, -1, 0).xCol()) &&
//    corner.zCol().equals(getPiece(-1, 0, 0).zCol()));
//}
//void orangeAtRight(Piece corner) { 
//  if (isOrientated(corner) && corner.yCol() == "orange" ) {
//    move("r"); 
//    move("d"); 
//    move("R");
//  }
//}  
void whiteCornerRightAlgo() {
  for (int i = 0; i < pieces.length; i ++) {
    if (isOrientated(pieces[i]) && pieces[i].yCol().equals(getCol("R")) && pieces[i].zCol().equals(getCol("D"))
      && pieces[i].xCol().equals("orange")) {
      move("d"); 
      move("r"); 
      move("D"); 
      move("R");
    }
  }
}  
void whiteCornerLeftAlgo(){
  for(int i= 0; i < pieces.length; i++){
    if(isOrientated(pieces[i]) && pieces[i].yCol().equals("orange") && (pieces[i].xCol().equals(getCol("F")))
    && pieces[i].zCol().equals(getCol("R"))){
      move("D");
      move("L");
      move("d"); 
      move("l");
    }
  }
} 
void whiteCornerDownAlgo(){
  for(int i = 0; i < pieces.length; i++){
    if(isOrientated(pieces[i]) && pieces[i].zCol().equals("orange") && (pieces[i].xCol().equals(getCol("R")))
    && pieces[i].yCol().equals(getCol("F"))){
      move("F"); 
      move("d"); 
      move("f"); 
      move("D"); 
      move("D"); 
      move("d"); 
      move("r"); 
      move("D"); 
      move("R");
    }
  }
}

//boolean isPlacedFaceFront(Piece corner){
//  return(corner.zCol().equals(getPiece(0, 
//}
void orangeAtFront(Piece corner) {
  if (isOrientated(corner) && corner.xCol() == "orange") {
    move("F"); 
    move("D"); 
    move("f");
  }
}
//boolean isPlacedFaceDown(Piece corner){
//  return(corner.zCol().equals(getPiece(0, 
//}
void orangeAtDown(Piece corner) {
  if (isOrientated(corner) && corner.zCol() == "orange") {
    move("r"); 
    move("d"); 
    move("d"); 
    move("R"); 
    move("D"); 
    move("d"); 
    move("R");
  }
} 
void orangeAtWrong(Piece corner) {
  if (isOrangeCorner(corner) && corner.zCol() == "orange") {
    move("L"); 
    move("D"); 
    move("l"); 
    move("r"); 
    move("d"); 
    move("R");
  }
}  
//return true if all corners have been placed correctly
//boolean cornersPlaced() {
//  int corners = allOrangeCorners();
//  for (int i = 0; i < corners; i++) {
//  }
//}
void crossCorners() {
  for (int i = 0; i < pieces.length; i ++) {
    orangeAtRight(pieces[i]); 
    orangeAtDown(pieces[i]); 
    orangeAtFront(pieces[i]); 
    orangeAtWrong(pieces[i]);
  }
}
}
