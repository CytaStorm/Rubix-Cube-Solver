import java.util.*;  //<>// //<>// //<>// //<>// //<>//
public class Cube {
  //String lCol, rCol, fCol, bCol, uCol, dCol;
  boolean solving;
  ArrayList<String> solutionSet = new ArrayList<String>(); 
  ArrayList<String> scramble = new ArrayList<String>(Arrays.asList("l", "R", "b", "R", "D", "l", "d", "b", "F", "D", "b", "f", "f", "D", "d", "d", "l", "F", "r", "f", "B", "d", "b", "z", "Z", "R", "R", "Z", "F", "F", "D", "f", "f", "z", "Z", "d", "f", "R", "F", "Z", "B", "d", "b", "z", "Z", "d", "f", "R", "F", "Z", "R", "R", "z", "Z", "d", "f", "R", "F", "Z"));
  ArrayList<String> moves = new ArrayList<String>();
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

    //    lCol = getPiece(-1, 0, 0).yCol();
    //    rCol = getPiece(1, 0, 0).yCol();
    //    fCol = getPiece(0, -1, 0).xCol();
    //    bCol = getPiece(0, 1, 0).xCol();
    //    uCol = getPiece(0, 0, 1).zCol();
    //    dCol = getPiece(0, 0, -1).zCol();
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

    //lCol = getPiece(-1, 0, 0).yCol();
    //rCol = getPiece(1, 0, 0).yCol();
    //fCol = getPiece(0, -1, 0).xCol();
    //bCol = getPiece(0, 1, 0).xCol();
    //uCol = getPiece(0, 0, 1).zCol();
    //dCol = getPiece(0, 0, -1).zCol();
  }

  public void scrambleFixed() {
    for (String i : scramble) {
      move(i);
      solRemoveLast();
    }
    scramble.clear();
  }
  //scrambles cube using 20 moves
  public void scramble() {
    moves.clear();
    int i = 0;
    while (i<20) {
      int picker = (int)(Math.random()*12);
      switch(picker) {
      case 0: 
        move("L");
        scramble.add("\"" + "L" + "\"");
        break;
      case 1: 
        move("l");
        scramble.add("\"" + "l" + "\"");
        break;
      case 2: 
        move("R");
        scramble.add("\"" + "R" + "\"");
        break;
      case 3: 
        move("r");
        scramble.add("\"" + "r" + "\"");
        break;
      case 4: 
        move("U");
        scramble.add("\"" + "U" + "\"");
        break;
      case 5: 
        move("u");
        scramble.add("\"" + "u" + "\"");
        break;
      case 6: 
        move("D");
        scramble.add("\"" + "D" + "\"");
        break;
      case 7: 
        move("d");
        scramble.add("\"" + "d" + "\"");
        break;
      case 8: 
        move("F");
        scramble.add("\"" + "F" + "\"");
        break;
      case 9: 
        move("f");
        scramble.add("\"" + "f" + "\"");
        break;
      case 10: 
        move("B");
        scramble.add("\"" + "B" + "\"");
        break;
      case 11: 
        move("b");
        scramble.add("\"" + "b" + "\"");
        break;
      default: 
        break;
      }
      i++;
    }
    // println(scramble);
    // scramble.clear();
  }

  void move(String move) {
    moves.add("\"" +move+ "\"");
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
  }

  //finds piece given 2 colors
  public Piece findPiece(String col1, String col2) {
    for (int i = 0; i < 26; i++) {
      if (pieces[i].hasColor(col1) && pieces[i].hasColor(col2) && pieces[i].isEdge()) {
        return pieces[i];
      }
    }
    return null;
  }
  //finds piece given 3 colors
  public Piece findPiece(String col1, String col2, String col3) {
    for (int i = 0; i < 26; i++) {
      if (pieces[i].hasColor(col1) && pieces[i].hasColor(col2) && pieces[i].hasColor(col3)) {
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
      println("you shouldn't be here! put in a valid face U/F/R/L/B/D to get its color!");
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
  public void DPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[2] == -1) {
        pieces[i].rotateZCW();
      }
    }
  }
  public void D() {
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
    // println("mprime is called");
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
    // println("e is called");
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
    // println("eprime is called");
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
    // println("s is called");
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
    // println("sprime is called");
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
    D();
  } 
  public void ZPrime() {
    U(); 
    EPrime(); 
    DPrime();
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
    // makeCorners();
    secondLayer();
    // redCross();
    //edges(cube);
    //corners(cube);
    //print("solved!");
    //solving = false;
  }

  void cross() {
    println("before first layer: " + moves);
    moves.clear();
    println("start of cross");

    for(int i = 0; i < 4; i++){ //solves right side piece
    // int i = 0;
    Piece targetPiece = findPiece(getCol("U"), getCol("R")); //finds targetPiece
    // println(targetPiece);
    if (targetPiece.zPos() == 1) { //if on top layer
      if (targetPiece.yPos() == 1) {//if on back layer
        // println("in back");
        move("b");
        move("b");//move to bot back middle
        move("d");//moves to right middle
        move("B"); 
        move("B");//brings back pieces
        i--;
        move("z");
      } else if (targetPiece.yPos()==0) {//in middle
        // println("in middle");
        if (targetPiece.xPos()==1) {
          move("L");
          move("L"); //moves to bot
          move("D");
          move("D"); //moves to bot right middle
          move("l");
          move("l"); //returns right pieces
          i--;
          move("z");
        } else if(!targetPiece.xCol().equals(getCol("R"))){
          //in top right but swapped colors
          move("R");
          move("R");
          i--;
          move("z");
        }
      } else {//in front
        // println("in front");
        move("F");
        move("F");//move to bot front middle
        move("D");//moves to right middle
        move("f"); 
        move("f");//brings back pieces
        i--;
        move("z");
      }
    } else if (targetPiece.zPos() == 0) { //in  middle layer
      if (targetPiece.yPos() == 1) { //in back layer
        if (targetPiece.xPos() == 1) { //in left side
          move("b");//move to bot back middle
          move("d");//move to bot right middle
          move("B");//puts piece back
          i--;
          move("z");
        } else {//on right side
          move("B");//move to bot back middle
          move("d");//move to bot right middle
          move("b");//puts piece back
          i--;
          move("z");
        }
      } else {//in front layer
        if (targetPiece.xPos() == 1) { //in left side
          move("f");//move to bot front middle
          move("D");//move to bot right middle
          move("F");//puts piece back
          i--;
          move("z");
        } else {
          //on right side
          move("F");//move to bot front middle
          move("D");//move to bot right middle
          move("f");//puts piece back
          i--;
          move("z");
        }
      }
    } else {//in bot layer
      if (targetPiece.yPos() == 1) {//in back layer
        move("d");//move to bot right middle
        i--;
        move("z");
      } else if (targetPiece.yPos() == -1) {//in front layer
        move("D");//move to bot right middle
        i--;
        move("z");
      } else {//in middle layer
        if (targetPiece.xPos() == 1) {//on left side
          move("D");//move to bot front middle
          move("D");//move to bot right middle
          i--;
          move("z");
        } else {
          //in bot right middle
          if (!targetPiece.xCol().equals(getCol("R"))) {
            //color does not match face
            move("d");
            move("f");
            move("R");
            move("F");
            targetPiece = findPiece(getCol("U"), getCol("R")); //finds targetPiece
            // println("in correct pos after swap " + targetPiece);
          } else {
            move("R");
            move("R");
            targetPiece = findPiece(getCol("U"), getCol("R")); //finds targetPiece
            // println("in correct pos " + targetPiece);
          }
        }
      }
    }
    // targetPiece = findPiece(getCol("U"), getCol("R")); //finds targetPiece
    // println(targetPiece);
    move("Z");
    }
    println("finished using cross");
    // println("after first layer: " + moves);
    return;
  }

  //corners
  void makeCorners() {
    for (int i = 0; i < 4; i++) { //major rot on z axis to change which topRight we are solvin
      Piece targetPiece = findPiece(getCol("U"), getCol("F"), getCol("R")); //finds us targetPiece, since we are always solving top Right, finds corner Piece with front top and right colors;
      // println(targetPiece); 
      if (targetPiece.zPos() == 1) { //it is on the top
        if (targetPiece.yPos() == 1) { //it is on back face
          if (targetPiece.xPos() == -1) { //if is is on right side
            move("B"); //move to bot layer
            move("d"); //now at bot right
            move("b"); //return top layer pieces
          } else { //on left
            move("b"); //move to bot layer
            move("D"); //move to bot left
            move("B"); //return top layer pieces
          }
          i--;
          move("z"); //decrements down so it will catch the piece on the next move, ZPrime counters loop's Z rot at end of loop
          // println("infinite loop");
        } else { // in front face
          if (targetPiece.xPos() == 1) { //if on left side
            move("L");//move to bot left
            move("D");//move to bot right
            move("l");//returns left pieces
            i--;
            move("z"); //decrements down so it will catch the piece on the next move, ZPrime counters loop's Z rot at end of loop
            // println("infinite loop");
          } else { //is on right side
            if (!isCornerAlignedRight(targetPiece)) { //not correct piece
              if (targetPiece.yCol().equals(getCol("U"))) { //if cube's up color is facing us
                // println("white facing us");
                whiteUsAlgo();
              } else {
                moveToBottom();
              }
              // atBottomtoTop(targetPiece);
              i--;
              move("z");
              // println("infinite loop");
            }
          }
        }
      } else { //it is on the bottom layer
        if (targetPiece.yPos() == 1) { // if it is is on back layer
          if (targetPiece.xPos() == -1) { //if is is on right side
            move("d"); //now at bot right
          } else { //is on left side
            move("d");
            move("d"); //now at bot left
          }
          i--;
          move("z"); //decrements down so it will catch the piece on the next move, ZPrime counters loop's Z rot at end of loop
          // println("infinite loop");
        } else { //it is on front layer
          if (targetPiece.xPos() == 1) { //if on left side
            if (targetPiece.zCol().equals(getCol("U"))) { //if white is on bottom
              move("D");
              i--;
              move("z");//decrements down so it will catch the piece on the next move, ZPrime counters loop's Z rot at end of loop
              // println("infinite loop");
            } else {
              align("F", targetPiece.yCol());
              align("L", targetPiece.xCol());
              atBottomtoTop(targetPiece);
            }
          } else { //in bot right
            if (targetPiece.zCol().equals(getCol("U"))) { //if top color is facing down
              // println("up color facing down");
              align("F", targetPiece.xCol()); //aligned with opposite colors
              // println("aligned to opp colors");
              whiteDownAlgo();
              // println("white down algo");
              // println("put into correct spot");
              atBottomtoTop(targetPiece);
            } else { //if top color not facing down
              // println("piece is in [-1,-1,-1]");
              align("R", targetPiece.xCol()); //at bottom, now align right of cube to its color
              //println("cube aligned to right face");
              atBottomtoTop(targetPiece);
            }
          }
        }
      }

      move("Z"); //move on to solve next topRight
    }
    println("finished making corners");
    // println(solutionSet());
  }

  //move corner piece to bottom layer
  void atBottomtoTop(Piece piece) {
    if (piece.xPos()==1) { //if on left
      cornerLeftAlgo();
      move("Z"); //bc this solves left side, rotate entire cube
    } else { //if on right
      cornerRightAlgo();
    }
  }
  void moveToBottom() {
    move("r");
    move("d");
    move("R");
    move("D");
  }

  //algos
  void cornerLeftAlgo() {
    move("D");
    move("L");
    move("d");
    move("l");
  }

  void cornerRightAlgo() {
    move("d");
    move("r");
    move("D");
    move("R");
  }

  void whiteDownAlgo() {
    move("F");
    move("d");
    move("f");
    move("D");
    move("D");
  }
  void whiteUsAlgo() {
    move("r");
    move("D");
    move("R");
  }

  void align(String dir, String col) {
    if (dir.equals("L")) { //align left
      if (getCol("U").equals(col)) {
        move("Z");
      } else {
        while (!getCol("L").equals(col)) {
          move("u");
          move("E");
        }
      }
    } else if (dir.equals("R")) { //align right
      if (getCol("U").equals(col)) { 
        move("z");
      } else {
        while (!getCol("R").equals(col)) {

          move("u");
          move("E");
          // println("getCol: " + getCol("F"));
          // println("col is: " + col);
        }
        //move("Z");
      }
    } else {
      if (getCol("U").equals(col)) { //align front
        return;
      } else {
        while (!getCol("F").equals(col)) {

          move("u");
          move("E");
          // println("getCol: " + getCol("F"));
          // println("col is: " + col);
        }
        //move("Z");
      }
    }
  }

  boolean isCornerAlignedRight(Piece piece) {
    return
      piece.zCol().equals(getCol("U")) &&
      piece.xCol().equals(getCol("R")) &&
      piece.yCol().equals(getCol("F"));
  }


  // //secondLayer
  void secondLayer() {
    println("before second layer: " + moves);
    moves.clear();
    move("X");
    move("X");
    secondLayerHelper();
    for (int i = 0; i < pieces.length; i ++) {
      Piece current = pieces[i];

      if (current.isEdge() && current.zPos() == 0) {

        if (!current.hasColor(getCol("U"))) {
          // println(current);
          moveToTop(current.getPos());
          secondLayerHelper();
        }
      }
    }
    move("X");
    move("X");
    println("second layer finished");
    println("second layer moves: " + moves);
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
    return !getPiece(0, -1, 1).hasColor(getCol("U"));
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
    move("d");
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
      if (current.zPos() == 1 && current.isEdge() && !current.zCol().equals(getCol("U"))) {
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
    if (getPiece(0, 1, 1).zCol().equals(getCol("U")) && getPiece(0, -1, 1).zCol().equals(getCol("U"))) {//vertical stripe, not horizontal
      move("Z");
      return;
    }
    if (ul.zCol().equals(getCol("U")) && uf.zCol().equals(getCol("U")) && !ulf.zCol().equals(getCol("U"))) {
      move("z");
      return;
    } else if (ur.zCol().equals(getCol("U")) && ub.zCol().equals(getCol("U")) && !urb.zCol().equals(getCol("U"))) {
      move("Z");
      return;
    } else if (ur.zCol().equals(getCol("U")) && uf.zCol().equals(getCol("U")) && !urf.zCol().equals(getCol("U"))) {
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
