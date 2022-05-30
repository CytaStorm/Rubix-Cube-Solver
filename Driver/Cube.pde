import java.util.*; //<>//
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
  public void R() {
    println("R used"); 
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[0] == -1) {
        pieces[i].rotateXCW();
      }
    }
  } 
  public void RPrime() {
    println("RPrime used"); 
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
    R();
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
    // makeCross();
  }
  void poppy() {

    //moves all petals on bottom layer with red color at all to top
    // if (poppyPetalsOriented() < 4) {
    //   for (int i = 0; i < pieces.length; i++) {
    //     // println("line 562 debug: " + i);
    //     // println(pieces[i].isEdge());
    //     if (pieces[i].isEdge() && pieces[i].getPos()[2] == -1 && pieces[i].hasColor("red")) {
    //       // println("inside for loop");
    //       makeSpace(pieces[i].getPos()[0], pieces[i].getPos()[1], 1, "red");
    //       String moveToMake = pieces[i].verticalFace();
    //       // println(moveToMake);
    //       move(moveToMake);
    //       move(moveToMake);
    //     }
    //   }
    // }
    while (poppySemiOriented() < 4) {
      for (int j = 0; j < 4; j++) { // if edge piece has red color while on at -1, 0, -1 
        for (int i = 0; i < pieces.length; i++) {
          // println("line 562 debug: " + i);
          // println(pieces[i].isEdge());
          Piece current = pieces[i]; 
          if (current.isEdge() && current.hasColor("orange") && current.xPos() == -1 && current.zPos() != -1) {
            println("inside for loop"); 
            makeSpace(current.xPos(), 0, -1, "orange"); 
            if (current.zPos() == 0) {
              if (current.yPos() == -1) {
                move("R"); 
                println("at -1 1 1");
              } else {
                println("at -1 1 -1"); 
                move("r");
              }
            } else if (current.zPos() == 1) {
              println("orange on top layer"); 
              move("R"); 
              move("R");
            }
          }
        }
        Z();
      }
    }

    // if (poppyPetalsOriented() < 5) {
    //   for (int i = 0; i < pieces.length; i++) {
    //     //if has red and red is not bottom
    //     if (pieces[i].isEdge() && pieces[i].getPos()[2] == -1 && (pieces[i].hasColor("red") && !pieces[i].getCol()[2].equals("red"))) {
    //       String moveToMake = pieces[i].verticalFace();
    //       int reverseU = makeSpace(pieces[i].getPos()[0], pieces[i].getPos()[1], 1, "red");

    //       switch (moveToMake) {
    //       case "F": 
    //         move("f");
    //         move("u");
    //         move("R");
    //         break;
    //       case "L":
    //         move("l");
    //         move("u");
    //         move("F");
    //         break;
    //       case "R":
    //         move("r");
    //         move("u");
    //         move("B");
    //         break;
    //       case "B":
    //         move("b");
    //         move("L");
    //         move("f");
    //         break;
    //       default:
    //         break;
    //       }
    //       while (reverseU != 0) {
    //         move("u");
    //         reverseU --;
    //       }
    //     }
    //   }
    // }

    //bring up red petals in middle layer
    // if (poppyPetalsOriented() < 5) {
    //   for (int i = 0; i < pieces.length; i++) {
    //     if (pieces[i].isEdge() && pieces[i].getPos()[2] == 0) {
    //       Piece tempPiece = pieces[i];
    //       for (int j = 0; j < 2; j++) {
    //         if (tempPiece.getCol()[j].equals("red")) {
    //           if (pieces[i].getPos()[0] == -1 && pieces[i].getPos()[1] == -1) {
    //             if (tempPiece.getDir(tempPiece.getPos()[0], tempPiece.getPos()[1], tempPiece.getPos()[2], tempPiece.getDir(tempPiece.getCol()[j])).equals("L")) {
    //               makeSpace(0, -1, -1, "red");
    //               move("F");
    //             } else {
    //               makeSpace(-1, 0, -1, "red");
    //               move("l");
    //             }
    //           } else if (pieces[i].getPos()[0] == 1 && pieces[i].getPos()[1] == -1) {
    //             if (tempPiece.getDir(tempPiece.getPos()[0], tempPiece.getPos()[1], tempPiece.getPos()[2], tempPiece.getDir(tempPiece.getCol()[j])).equals("F")) {
    //               makeSpace(1, 0, -1, "red");
    //               move("R");
    //             } else {
    //               makeSpace(0, -1, -1, "red");
    //               move("f");
    //             }
    //           } else if (pieces[i].getPos()[0] == 1 && pieces[i].getPos()[1] == 1) {
    //             if (tempPiece.getDir(tempPiece.getPos()[0], tempPiece.getPos()[1], tempPiece.getPos()[2], tempPiece.getDir(tempPiece.getCol()[j])).equals("B")) {
    //               makeSpace(1, 0, -1, "red");
    //               move("r");
    //             } else {
    //               makeSpace(0, 1, -1, "red");
    //               move("B");
    //             }
    //           } else {
    //             if (tempPiece.getDir(tempPiece.getPos()[0], tempPiece.getPos()[1], tempPiece.getPos()[2], tempPiece.getDir(tempPiece.getCol()[j])).equals("B")) {
    //               makeSpace(-1, 0, -1, "red");
    //               move("L");
    //             } else {
    //               makeSpace(0, 1, -1, "red");
    //               move("b");
    //             }
    //           }
    //         }
    //       }
    //     }
    //   }
    // }

    //fix orientation in U layer
    // if (poppyPetalsOriented() < 5) {
    //   for (int i = 0; i < pieces.length; i++) {
    //     if (pieces[i].isEdge() && pieces[i].getPos()[2] == 1 && pieces[i].hasColor("red")){
    //       if (!(pieces[i].getCol()[2].equals("red"))) {
    //         println("inside if statement");
    //         String moveToMake = pieces[i].verticalFace();
    //         println("gets to switch statement");
    //         switch(moveToMake) {
    //         case "F": 
    //           move("F");
    //           move("u");
    //           move("R");
    //           break;
    //         case "R": 
    //           move("R");
    //           move("u");
    //           move("B");
    //           break;
    //         case "B": 
    //           move("B");
    //           move("u");
    //           move("L");
    //           break;
    //         case "L": 
    //           move("L");
    //           move("u");
    //           move("F");
    //           break;
    //         }
    //       }
    //     }
    //   }
    // }

    // if(poppyPetalsOriented() < 4){
    //   poppy();
    // }
    return;
  }

  //counts how many petals are oriented correctly on top
  int poppyFullOriented() {
    int result = 0; 
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].isEdge() && pieces[i].getPos()[2] == -1) {
        if (pieces[i].getCol()[2] != null && pieces[i].getCol()[2].equals("orange")) {
          result++;
        }
      }
    }
    return result;
  }

  int poppySemiOriented() {
    int result = 0; 
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].isEdge() && pieces[i].getPos()[2] == -1) {
        if (pieces[i].getCol()[2] != null && pieces[i].hasColor("orange")) {
          result++;
        }
      }
    }
    return result;
  }

  //if the piece on z = 1 on same slice as piece[i] is red, rotate top unti it is not a red piece
  int makeSpace(int x, int y, int z, String col) { 
    println("makeSpace called"); 
    int uTurnsMade = 0; 
    String[] tempColor = getPiece(x, y, z).getCol(); 
    while (Arrays.asList(tempColor).indexOf(col) != -1 && ((tempColor[0] != null && tempColor[0].equals(col)) || (tempColor[1] != null && tempColor[1].equals(col)))) {
      move("D"); 
      tempColor = getPiece(x, y, z).getCol(); 
      uTurnsMade++;
    }
    return uTurnsMade;
  }
  //public void crossCorners(Cube cube) { 
  //  Piece cNW = cube.findPiece(cube.getCol("U"), cube.getCol("L"), cube.getCol("B")); //back is up
  //  Piece cNE = cube.findPiece(cube.getCol("U"), cube.getCol("R"), cube.getCol("B"));
  //  Piece cSW = cube.findPiece(cube.getCol("U"), cube.getCol("L"), cube.getCol("F"));
  //  Piece cSE = cube.findPiece(cube.getCol("U"), cube.getCol("R"), cube.getCol("F"));
  //  crossCornerSolver(cube, cSE, cube.getPiece(-1,0,0), cube.getPiece(0,0,-1), cube.getCol("U"));
  //  move("Z");
  //  crossCornerSolver(cube, cNE, cube.getPiece(0,1,0), cube.getPiece(-1,0,0), cube.getCol("U"));
  //  move("Z"); 
  //  crossCornerSolver(cube, cNW, cube.getPiece(1,0,0), cube.getPiece(0,1,0), cube.getCol("U"));
  //  move("Z"); 
  //  crossCornerSolver(cube, cSW, cube.getPiece(0,0,-1), cube.getPiece(-1,0,0), cube.getCol("U"));
  //  move("Z"); 
  //} 

  //void crossCornerSolver(Cube cube, Piece corner, Piece right, Piece down, String frontColor) {
  //  int[] temp = corner.getPos(); 
  //  if (temp[2] == 1) {
  //    temp = corner.getPos(); 
  //    temp[0] = temp[2] = 0; 
  //    String [] moveSet = cube.faceRot(temp);
  //    String cW = moveSet[0];
  //    String cC = moveSet[1];  
  //    int count = 0; 
  //    String undo = cC; 
  //    while (temp[2] != -1) {
  //      move(cW); 
  //      count += 1;
  //    }
  //    if (count > 1) {
  //      for (int i = 0; i < count; i++) {
  //        move(cC);
  //      } 
  //      count = 0; 
  //      while (temp[2] != -1) {
  //        move(cC);
  //        count += 1;
  //      }
  //      undo = cW;
  //    }
  //    move("B"); 
  //    for (int i = 0; i < count; i++) {
  //      move(undo);
  //    }
  //  }
  //  while ((corner.xPos() != right.xPos()) && (corner.yPos() !=  down.yPos())) {
  //    move("B");
  //  }
  //  if(corner.xCol() == frontColor)/*getPiece(0,0,1).zCol())*/{
  //    move("B");
  //    move("D");
  //    move("b");
  //    move("d");
  //  }
  //  else if (corner.yCol() == frontColor) /*getPiece(0,0,1).zCol()) */{
  //    move("b");
  //    move("r");
  //    move("B");
  //    move("R");
  //  }
  //  else {
  //    move("r");
  //    move("B");
  //    move("B");
  //    move("R");
  //    move("b");
  //    move("b");
  //    move("D");
  //    move("b");
  //    move("d");
  //  }
  //} 
  
  //see if there's any wrong corners on top and move it down
  void checkCornersOnTop(){
    for(int i = 0; i < pieces.length; i ++){
      if(isOrangeCorner(pieces[i]) && pieces[i].zPos() == 1){
        if(pieces[i].xCol() != getCol("F") || (pieces[i].yCol() != getCol("R"))){
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
  void rightAlgo(){
    for(int i = 0; i < pieces.length; i ++){
      if(isOrientated(pieces[i]) && pieces[i].yCol() == getCol("R") && pieces[i].zCol() == getCol("D")){
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
