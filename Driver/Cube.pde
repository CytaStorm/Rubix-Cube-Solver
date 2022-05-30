import java.util.*;
public class Cube {
  boolean solving;
  ArrayList<String> solutionSet = new ArrayList<String>(); 
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
    solutionSet.add(move);
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
    case "M":
      M();
      break;
    case "m":
      MPrime();
      break;
    case "E":
      E();
      break;
    case "e":
      EPrime();
      break;
    case "S":
      S();
      break;
    case "s":
      SPrime();
      break;
    case "X":
      X();
      break;
    case "x":
      XPrime();
      break;
    case "Y":
      Y();
      break;
    case "y":
      YPrime();
      break;
    case "Z":
      Z();
      break;
    case "z":
      ZPrime();
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

  //gets piece at element piece
  public Piece getPiece(int i) {
    return pieces[i];
  }
  //accessor method: returns color of face given a face, each face will always be 1 color
  public String getCol(String face) {
    switch(face) {
    case "U" : 
      return getPiece(0, 0, 1).zCol();
    case "F" : 
      return getPiece(0, -1, 0).yCol();
    case "R" : 
      return getPiece(-1, 0, 0).xCol();
    case "L" : 
      return getPiece(1, 0, 0).xCol();
    case "B" : 
      return getPiece(0, 1, 0).yCol();
    case "D" : 
      return getPiece(0, 0, -1).zCol();
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
    println("X used");
    R();
    MPrime();
    LPrime();
  }
  public void XPrime() {
    println("XPrime used");
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
    // cross();
    makeCorners();
    // secondLayer();
    // redCross();
    //edges(cube);
    //corners(cube);
    //print("solved!");
    solving = false;
  }
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
            // println("inside for loop");
            makeSpace(current.xPos(), 0, -1, "orange");
            if (current.zPos() == 0) {
              if (current.yPos() == -1) {
                move("R");
                // println("at -1 1 1");
              } else {
                // println("at -1 1 -1");
                move("r");
              }
            } else if (current.zPos() == 1) {
              // println("orange on top layer");
              move("R");
              move("R");
            }
          }
        }
        move("Z");
      }
    }

    // println("finished using semiPoppy");

    move("X");
    move("X");
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
        move("Z");
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
        move("U");
        // println(isOriented(-1, 0, 1));
        // println(getPiece(-1, 0, 1));
      }
      move("R");
      move("R");
      move("Z");
    }
    move("x");
    move("x");
  }
  //checks if piece is oriented correctly
  boolean isOriented(int x, int y, int z) {
    Piece current = getPiece(x, y, z);
    return current.zCol().equals("orange") && current.xCol().equals(getPiece(-1, 0, 0).xCol());
  }

  //corners
  void makeCorners() {
    // for(int i = 0; i < pieces.length; i++){//filters out all correct pieces
    //   Piece current = pieces[i];
    //   if(current.isCorner() && current.hasColor("orange")){
    //     if(current.zPos() == 1 && current.xPos() == -1 && current.yPos() == -1){
    //       if(!(isCornerAlignedRight(current))){
    //         moveToBottom();
    //         cornerRightAlgo();
    //       }
    //     }else if(current.zPos() == -1){

    //     }
    //   }
    // }
    Piece test1 = getPiece(-1, -1, -1);
    // Piece test2 = getPiece(1, -1, 0);
    makeOrangeFaceUs(test1);
  }

  //move corner piece to bottom layer
  void moveToBottom(){
    move("r");
    move("d");
    move("R");
  }

  //algos
  void cornerLeftAlgo(){
    move("D");
    move("L");
    move("d");
    move("l");
  }

  void cornerRightAlgo(){
    move("d");
    move("r");
    move("D");
    move("R");
  }

  void cornerDownAlgo(){
    
  }

  void whiteDownAlgo(){
    move("F");
    move("d");
    move("f");
    move("D");
  }

  void whiteUpAlgo(){
    move("r");
    move("D");
    move("R");
  }
  //moves z = 1, z = 2 layer until piece aligns with color, then rotates cube to have orange facing us
  void alignCenter(String col){
    // println("col is: " + col);
    while(!getCol("F").equals(col)){
      
      move("u");
      move("E");
      // println(getCol("F"));
      
    }
  }

  void makeOrangeFaceUs(Piece piece){
    if(piece.yPos() == -1){
      move("Z");
      move("Z");
    }
    if(piece.xPos() == -1){
      if(piece.yCol().equals("orange")){
        move("z");
      }
    }else if(piece.yCol().equals("orange")){
      move("Z");
    }
  }

  boolean isCornerAlignedRight(Piece piece){
    println(piece);
    println(getCol("F") + " " + getCol("R"));
    return 
    piece.zCol().equals("orange") &&
    piece.xCol().equals(getCol("R")) &&
    piece.yCol().equals(getCol("F"));
  }
  boolean isCornerAlignedLeft(Piece piece){
    println(piece);
    println(getCol("F") + " " + getCol("L"));
    return 
    piece.zCol().equals("orange") &&
    piece.xCol().equals(getCol("L")) &&
    piece.yCol().equals(getCol("F"));
  }
  //secondLayer
  void secondLayer() {
    move("X");
    move("X");
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
    println("second layer finished");
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
      move("U");
    }
  }

  //checks if in right place
  boolean inRightPlace(Piece piece) {
    return 
      piece.xCol().equals(getPiece(piece.xPos(), 0, 0).xCol()) &&
      piece.yCol().equals(getPiece(0, piece.yPos(), 0).yCol());
    // &&
    // piece.xCol().equals(getPiece(piece.xPos(), 0, 0).xCol()) &&
    // piece.yCol().equals(getPiece(piece.xPos(), 0, 0).yCol());
  }

  //checks if it has red face
  boolean noRed() {
    return !getPiece(0, -1, 1).hasColor("red");
  }

  //checks adjacency
  boolean isAdjacentLeft() {
    return getPiece(0, -1, 1).zCol().equals(getPiece(1, 0, 0).xCol());
  }
  boolean isAdjacentRight() {
    return getPiece(0, -1, 1).zCol().equals(getPiece(-1, 0, 0).xCol());
  }

  //checks if makes vertical line
  boolean makesVertLine() {
    return getPiece(0, -1, 1).yCol().equals(getPiece(0, -1, 0).yCol());
  }

  //left right algos
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

  //rotate bottom to create vertLine
  void moveBottom() {
    move("D");
    move("e");
  }

  //move leftover pieces to top
  void moveToTop(int[] pos) {
    Piece current = getPiece(pos[0], pos[1], pos[2]);
    // println("moveToTop");
    // println(current);
    while (current.yPos() != -1) {
      move("Z");
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

  //third layer
  void redCross() {
    checkPosition();
    while (!redCrossChecker()) {
      singleAlgo();
      checkPosition();
    }
    println("redCross finished");
  }
  boolean redCrossChecker() {
    for (int i = 0; i < pieces.length; i++) {
      Piece current = pieces[i];
      if (current.zPos() == 1 && current.isEdge() && !current.zCol().equals("red")) {
        return false;
      }
    }
    return true;
  }
  void checkPosition() { 
    Piece face = getPiece(0, 0, 1);
    Piece ulb = getPiece(1, 1, 1);
    Piece ul = getPiece(1, 0, 1);
    Piece urb = getPiece(-1, 1, 1);
    Piece ur = getPiece(-1, 0, 1);
    Piece urf = getPiece(-1, -1, 1);
    Piece ub = getPiece(0, 1, 1);
    Piece ulf = getPiece(1, -1, 1);
    Piece uf = getPiece(0, -1, 1);
    if (getPiece(0, 1, 1).zCol().equals("red") && getPiece(0, -1, 1).zCol().equals("red")) {//vertical stripe, not horizontal
      move("Z");
      return;
    }
    if (ul.zCol().equals("red") && uf.zCol().equals("red") && !ulf.zCol().equals("red")) {
      move("z");
      return;
    } else if (ur.zCol().equals("red") && ub.zCol().equals("red") && !urb.zCol().equals("red")) {
      move("Z");
      return;
    } else if (ur.zCol().equals("red") && uf.zCol().equals("red") && !urf.zCol().equals("red")) {
      move("Z");
      move("Z");
      return;
    }
  }
  //the single algorithm
  void singleAlgo() {
    move("F");
    move("U");
    move("R");
    move("u");
    move("r");
    move("f");
  }
}
