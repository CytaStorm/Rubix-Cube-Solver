import java.util.*; //<>// //<>// //<>// //<>//
public class Cube {
  //String lCol, rCol, fCol, bCol, uCol, dCol;
  private boolean printScramble = false;
  private ArrayList<String> solutionSet = new ArrayList<String>(); 
  private ArrayList<String> scramble = new ArrayList<String>();
  private ArrayList<String> moves = new ArrayList<String>();

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
  }

  //reset cube
  public void reset() {
    println("reset");
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

  public void printScrambleToggle(boolean bool){
    printScramble = bool;
  }

  public boolean printScramble(){
    return printScramble; 
  }
  //scrambles cube using 20 moves
  public void scramble() {
    scramble.clear();
    int i = 0;
    while (i<20) {
      int picker = (int)(Math.random()*24);
      switch(picker) {
      case 0: 
        L();
        scramble.add("L");
        break;
      case 1: 
        LPrime();
        scramble.add("L'");
        break;
      case 2: 
        R();
        scramble.add("R");
        break;
      case 3: 
        RPrime();
        scramble.add("R'");
        break;
      case 4: 
        U();
        scramble.add("U");
        break;
      case 5: 
        UPrime();
        scramble.add("U'");
        break;
      case 6: 
        D();
        scramble.add("D");
        break;
      case 7: 
        DPrime();
        scramble.add("D'");
        break;
      case 8: 
        F();
        scramble.add("F");
        break;
      case 9: 
        FPrime();
        scramble.add("F'");
        break;
      case 10: 
        B();
        scramble.add("B");
        break;
      case 11: 
        BPrime();
        scramble.add("B'");
        break;
      case 12:
        M();
        scramble.add("M");
        break;
      case 13:
        MPrime();
        scramble.add("M'");
        break;
      case 14:
        E();
        scramble.add("E");
        break;
      case 15:
        EPrime();
        scramble.add("E'");
        break;
      case 16:
        S();
        scramble.add("S");
        break;
      case 17:
        SPrime();
        scramble.add("S'");
        break;
      case 18:
        X();
        scramble.add("X");
        break;
      case 19:
        XPrime();
        scramble.add("X'");
        break;
      case 20:
        Y();
        scramble.add("Y");
        break;
      case 21:
        YPrime();
        scramble.add("Y'");
        break;
      case 22:
        Z();
        scramble.add("Z");
        break;
      case 23:
        ZPrime();
        scramble.add("Z'");
        break;
      default: 
        break;
      }
      i++;
    }
    // println("Your scramble (before optimize) is: " + scramble);
    if(printScramble){
    moveOptimizer(scramble);
    println("Your scramble is: " + scramble);
    }
    //scramble.clear();
  }

  void move(String move) {
    if (!Character.isUpperCase(move.charAt(0))) {
      // moves.add("\"" + move.toUpperCase() + "'" + "\"");
      moves.add(move.toUpperCase() + "'");
    } else {
      // moves.add("\"" + move + "\"");
      moves.add(move);
    }
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
    case "b": 
      BPrime();
      break;
    case "B": 
      B();
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
      return null;
    }
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
  public void BPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[1] == 1) {
        pieces[i].rotateYCW();
      }
    }
  }
  public void B() {
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
    // println("X used");
    R();
    MPrime();
    LPrime();
  }
  public void XPrime() {
    // println("XPrime used");
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
    B();
  }
  public void YPrime() {
    F();
    S();
    BPrime();
  }
  private void solve() {
    if (Arrays.equals(nineColors(), new int[]{9, 9, 9, 9, 9, 9})) {
      moves.clear();
      cross();
      makeCorners();
      secondLayer();
      botCross();
      botFace();
      botCorners();
      botEdges();
      // println("solved!");
      // println("Solution before optimize: " + moves);
      moveOptimizer(moves);
      println(moves);
    } else {
      println("too many of 1 color!");
      println("orange: " + nineColors()[0]);
      println("white: " + nineColors()[1]);
      println("red: " + nineColors()[2]);
      println("green: " + nineColors()[3]);
      println("blue: " + nineColors()[4]);
      println("yellow: " + nineColors()[5]);
    }
  }

  private int[] nineColors() {
    int[] result = new int[6];
    for (Piece i : pieces) {
        for (int j = 0; j < 3; j++) {
          if (i.getCol()[j] != null) {
            String currentCol = i.getCol()[j];
            switch(currentCol) {
            case "orange": 
              result[0]++;
              break;
            case "white": 
              result[1]++;
              break;
            case "red": 
              result[2]++;
              break;
            case "green": 
              result[3]++;
              break;
            case "blue": 
              result[4]++;
              break;
            case "yellow": 
              result[5]++;
              break;
            default:
              break;
            }
          }
        }
    }
    return result;
  }

  private void cross() {

    for (int i = 0; i < 4; i++) { //solves right side piece
      // int i = 0;
      Piece targetPiece = findPiece(getCol("U"), getCol("R")); //finds targetPiece
      // println(targetPiece);
      if (targetPiece.zPos() == 1) { //if on top layer
        if (targetPiece.yPos() == 1) {//if on back layer
          // println("in back");
          move("B");
          move("B");//move to bot back middle
          move("d");//moves to right middle
          move("b"); 
          move("b");//brings back pieces
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
          } else if (!targetPiece.xCol().equals(getCol("R"))) {
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
            move("B");//move to bot back middle
            move("d");//move to bot right middle
            move("b");//puts piece back
            i--;
            move("z");
          } else {//on right side
            move("b");//move to bot back middle
            move("d");//move to bot right middle
            move("B");//puts piece back
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
    // println("finished using cross!");
    // println("after first layer: " + moves);
    return;
  }

  //corners
  private void makeCorners() {
    // println("before second layer: " + moves);
    // moves.clear();
    for (int i = 0; i < 4; i++) { //major rot on z axis to change which topRight we are solvin
      Piece targetPiece = findPiece(getCol("U"), getCol("F"), getCol("R")); //finds us targetPiece, since we are always solving top Right, finds corner Piece with front top and right colors;
      // println(targetPiece); 
      if (targetPiece.zPos() == 1) { //it is on the top
        if (targetPiece.yPos() == 1) { //it is on back face
          if (targetPiece.xPos() == -1) { //if is is on right side
            move("b"); //move to bot layer
            move("d"); //now at bot right
            move("B"); //return top layer pieces
          } else { //on left
            move("B"); //move to bot layer
            move("D"); //move to bot left
            move("b"); //return top layer pieces
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
    // println("finished making corners!");
    // println("corner " + moves);
  }

  //move corner piece to bottom layer
  private void atBottomtoTop(Piece piece) {
    if (piece.xPos()==1) { //if on left
      cornerLeftAlgo();
      move("Z"); //bc this solves left side, rotate entire cube
    } else { //if on right
      cornerRightAlgo();
    }
  }
  private void moveToBottom() {
    move("r");
    move("d");
    move("R");
    move("D");
  }

  //algos
  private void cornerLeftAlgo() {
    move("D");
    move("L");
    move("d");
    move("l");
  }

  private void cornerRightAlgo() {
    move("d");
    move("r");
    move("D");
    move("R");
  }

  private void whiteDownAlgo() {
    move("F");
    move("d");
    move("f");
    move("D");
    move("D");
  }
  private void whiteUsAlgo() {
    move("r");
    move("D");
    move("R");
  }

  private void align(String dir, String col) {
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

  private boolean isCornerAlignedRight(Piece piece) {
    return
      piece.zCol().equals(getCol("U")) &&
      piece.xCol().equals(getCol("R")) &&
      piece.yCol().equals(getCol("F"));
  }


  // //secondLayer
  private void secondLayer() {
    move("X");
    move("X");
    for (int i = 0; i < 4; i++) { //goes through each of the 4 edge pieces on the cube and puts them in the right spot if possible, results in only red edge pieces on top
      Piece targetPiece = findPiece(getCol("R"), getCol("F"));
      //if it is not in right position, moves to top front middle of correct face, then performs right algo
      if (targetPiece.zPos()==0) {
        //in middle
        if (targetPiece.yPos()==1) {
          //in back
          if (targetPiece.xPos()==-1) {
            //on right side
            move("z");
            rightAlgo();//moves to top
            move("Z");
            i--;
            move("z");
          } else {
            //on left side
            move("Z");
            leftAlgo();//moves to top
            move("z");
            i--;
            move("z");
          }
        } else if (targetPiece.xPos()==1) {
          //on front left
          leftAlgo();//moves to top
          i--;
          move("z");
        } else {
          //in front right
          if (targetPiece.yCol().equals(getCol("R"))) {
            //colors swapped
            rightAlgo();
            i--;
            move("z");
          }
        }
      } else {
        //it is on top
        if (targetPiece.yPos()==1) {
          //in back 
          move("U");
          move("U");//moves to top front middle
          i--;
          move("z");
        } else if (targetPiece.xPos() == 1) {
          //on left
          move("u");//moves to top front middle
          i--;
          move("z");
        } else if (targetPiece.xPos() == -1) {
          //on right
          move("U"); //moves to top front middle
          i--;
          move("z");
        } else {
          //in front
          if (targetPiece.yCol().equals(getCol("R"))) {
            move("u");
            move("z");
            leftAlgo();
            move("Z");
          } else {
            rightAlgo();
          }
        }
      }
      move("Z");
    }
    // println("second layer finished!");
    // println("second layer moves: " + moves);
  }

  //left right algos
  private void leftAlgo() {
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
  private void rightAlgo() {
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

  //third layer
  private void botCross() {
    checkPosition();
    while (!botCrossChecker()) {
      singleAlgo();
      checkPosition();
    }
    // println("botcross finished!");
  }
  private boolean botCrossChecker() {
    for (int i = 0; i < pieces.length; i++) {
      Piece current = pieces[i];
      if (current.zPos() == 1 && current.isEdge() && !current.zCol().equals(getCol("U"))) {
        return false;
      }
    }
    return true;
  }
  private void checkPosition() { 
    //Piece face = getPiece(0, 0, 1);
    //Piece ulb = getPiece(1, 1, 1);
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
  private void singleAlgo() {
    move("F");
    move("U");
    move("R");
    move("u");
    move("r");
    move("f");
  }

  //orient yellow corners
  private void botFace() {
    while (!checkBotFace()) {
      botFaceOrient();
      cornerSingleAlgo();
    }

    // println("botFace finished!");
  }
  private void botFaceOrient() {
    //returns 1 of 4 orientations of bottom 
    int o = 0; //number of top corners with topcolor facing up
    for (Piece i : pieces) {
      if (i.zPos() == 1 && (i.xPos() != 0 && i.yPos() != 0)) {
        if (i.zCol().equals(getCol("U"))) {
          o++;
        }
      }
    }

    //orients based on number of faces with upcolor facing up
    Piece targetPiece = getPiece(1, -1, 1);
    switch(o) {
    case 0: 
      while (!targetPiece.xCol().equals(getCol("U"))) {
        move("Z");
        targetPiece = getPiece(1, -1, 1);
      }
      return;
    case 1: 
      while (!targetPiece.zCol().equals(getCol("U"))) {
        move("Z");
        targetPiece = getPiece(1, -1, 1);
      }
      return;
    case 2:
      while (!targetPiece.yCol().equals(getCol("U"))) {
        move("Z");
        targetPiece = getPiece(1, -1, 1);
      }
      return;
    case 3:
      while (!targetPiece.yCol().equals(getCol("U"))) {
        move("Z");
        targetPiece = getPiece(1, -1, 1);
      }
      return;
    default:
      return;
    }
  }
  //checks if all faces are same on top(bot)
  private boolean checkBotFace() {
    int upfaces = 0;
    for (Piece i : pieces) {
      if (i.zPos() == 1 && i.zCol().equals(getCol("U"))) {
        upfaces++;
      }
    }
    return upfaces == 9;
  }
  private void cornerSingleAlgo() {
    move("R");
    move("U");
    move("r");
    move("U");
    move("R");
    move("U");
    move("U");
    move("r");
  }

  //positioning bot corners
  private void botCorners() {
    while (!checkCornerPos()) {
      botCornerPos();
      cornerPosSingleAlgo();
    }
  }
  private void botCornerPos() {
    // println("setting up pos");
    //refer to https://assets.ctfassets.net/r3qu44etwf9a/6kAQCoLmbXXu29TTuArrk1/404118e1f9bfb6f9997157a284bbc572/Rubiks_Solution-Guide_3x3.pdf for cube positions
    //makes position 1-4
    for (int j = 0; j < 4; j++) {
      for (int i = 0; i < 4; i++) {
        Piece frontLeft = getPiece(1, -1, 1);
        Piece frontRight = getPiece(-1, -1, 1);
        if (frontLeft.yCol().equals(frontRight.yCol()) && frontLeft.yCol().equals(getCol("F")) && frontLeft.xCol().equals(getCol("L")) && frontRight.xCol().equals(getCol("R"))) {
          move("Z");
          move("Z");
          //println("position 1-4");
          return;
        }
        move("U");
      }
      move("Z");
    }

    //checks for position 5
    for (int i = 0; i < 2; i++) {
      Piece frontLeft = getPiece(1, -1, 1); //front layer piece
      Piece backRight = getPiece(-1, 1, 1); //back layer piece
      if (frontLeft.xCol().equals(getCol("L")) && frontLeft.yCol().equals(getCol("F")) && backRight.xCol().equals(getCol("R")) && backRight.yCol().equals(getCol("b"))) {
        //println("position 5");
        return;
      }
      move("Z");
    }
    //checks for position 6   
    for (int i = 0; i < 2; i++) {
      Piece frontRight = getPiece(-1, -1, 1); //front layer piece
      Piece backLeft = getPiece(1, 1, 1); //back layer piece
      if (frontRight.xCol().equals(getCol("R")) && frontRight.yCol().equals(getCol("F")) && backLeft.xCol().equals(getCol("L")) && backLeft.yCol().equals(getCol("b"))) {
        println("position 6");
        return;
      }
      move("Z");
    }

    // println("no position");
  }

  private void cornerPosSingleAlgo() {
    // println("using algo");
    move("r");
    move("F");
    move("r");
    move("B");
    move("B");
    move("R");
    move("f");
    move("r");
    move("B");
    move("B");
    move("r");
    move("r");
  }

  private boolean checkCornerPos() {
    for (int i = 0; i < 4; i++) { //big Z rot
      int correctPos = 0;
      for (int j = 0; j < 4; j++) { //checks corners for each face
        Piece current = getPiece(-1, -1, 1);
        if (current.yCol().equals(getCol("F")) && current.xCol().equals(getCol("R"))) {
          correctPos++;
        }
        if (correctPos == 4) {
          return true;
        }
        move("Z");
      }
      move("U");
    }
    return false;
  }

  private void botEdges() {
    for (int i = 0; i < 4; i++) {
      move("Z");
      if (faceSolved()) {
        move("Z");
        move("Z");
        break;
      }
    }
    for (int i = 0; i < 3  && !isCubeSolved(); i++) {
      Piece target =  getPiece(0, -1, 1);
      if (target.yCol().equals(getCol("R"))) {
        botEdgeRightAlgo();
      } else {
        botEdgeLeftAlgo();
      }
      if (faceSolved()) {
        move("Z");
        move("Z");
      }
      move("Z");
      if (faceSolved()) {
        move("Z");
        move("Z");
      }
      move("z");
      move("z");
      if (faceSolved()) {
        move("Z");
        move("Z");
      }
    }
    // println("botEdges complete");
    move("X");
    move("X");
  }
  private void botEdgeLeftAlgo() {
    move("F");
    move("F");
    move("U");
    move("L");
    move("r");
    move("F");
    move("F");
    move("l");
    move("R");
    move("U");
    move("F");
    move("F");
  }
  private void botEdgeRightAlgo() {
    move("F");
    move("F");
    move("u");
    move("L");
    move("r");
    move("F");
    move("F");
    move("l");
    move("R");
    move("u");
    move("F");
    move("F");
  }

  private boolean faceSolved() {
    Piece fr = getPiece(-1, -1, 0);
    Piece fl = getPiece(1, -1, 0);
    Piece fu = getPiece(0, -1, 1);
    Piece fd = getPiece(0, -1, -1);
    Piece ful = getPiece(1, -1, 1);
    Piece fur = getPiece(-1, -1, 1);
    Piece fdl = getPiece(1, -1, -1);
    Piece fdr = getPiece(-1, -1, -1);

    boolean b_fr = fr.yCol().equals(getCol("F")) && fr.xCol().equals(getCol("R"));
    boolean b_fl = fl.yCol().equals(getCol("F")) && fl.xCol().equals(getCol("L"));
    boolean b_fu = fu.yCol().equals(getCol("F")) && fu.zCol().equals(getCol("U"));
    boolean b_fd = fd.yCol().equals(getCol("F")) && fd.zCol().equals(getCol("D"));
    boolean b_ful = ful.yCol().equals(getCol("F")) && ful.xCol().equals(getCol("L")) && ful.zCol().equals(getCol("U"));
    boolean b_fur = fur.yCol().equals(getCol("F")) && fur.xCol().equals(getCol("R")) && fur.zCol().equals(getCol("U"));
    boolean b_fdl = fdl.yCol().equals(getCol("F")) && fdl.zCol().equals(getCol("D"))  && fdl.xCol().equals(getCol("L"));
    boolean b_fdr = fdr.yCol().equals(getCol("F")) && fdr.zCol().equals(getCol("D")) && fdr.xCol().equals(getCol("R"));

    return b_fr && b_fl && b_fu && b_fd && b_ful && b_fur && b_fdl && b_fdl && b_fdr;
  }

  private boolean isCubeSolved() {
    for (int i = 0; i < 4; i++) {
      if (!faceSolved()) {
        return false;
      }
      move("Z");
    }
    return true;
  }

  private void moveOptimizer(ArrayList<String> moves) {
    for (int i = moves.size() - 1; i > 0; i--) {
      if (moves.get(i).charAt(0) == moves.get(i-1).charAt(0) && moves.get(i).length() != moves.get(i-1).length()) {
        //if the first char is the same in both indexes but their lengths are different
        //meaning their rotations are the same, but the only difference is prime/unprime
        moves.remove(i);
        moves.remove(i-1);
        i--; //since you're removing the item in front of it as well
      }
    }
    ArrayDeque<int[]> duplicates = duplicates(moves);
    // while(duplicates.size() != 0){
    //   print("" + duplicates.peek()[0] + " " + duplicates.poll()[1]);
    //   println();
    // }
    while (duplicates.size() != 0) {
      //loop so it will look for duplicates multiple times
      while (duplicates.size() != 0) {
        int[] currentDupe = duplicates.getFirst();
        int dupeBegin = currentDupe[1];
        int dupeEnd = currentDupe[0];
        int dupeSize = dupeEnd - dupeBegin + 1;//how large the duplicate is
        moves.remove(dupeEnd); //end must be removed no matter what
        if (dupeSize == 2) {
          //double move
          moves.set(dupeBegin, "2" + moves.get(dupeBegin));
        } else {
          moves.remove(dupeEnd - 1); //both 3 and 4 size duplicates require elements at index dupeEnd-1 to be removed
          if (dupeSize == 3) {
            //triple move, turn into prime
            moves.set(dupeBegin, moves.get(dupeBegin) + "'");
          } else {
            //quad move, remove all
            moves.remove(dupeEnd - 2);
            moves.remove(dupeBegin);
          }
        }
        duplicates.removeFirst();
      }
      duplicates = duplicates(moves);
    }
  }

  private ArrayDeque<int[]> duplicates(ArrayList<String> moves) {
    // println("conRepeat");
    ArrayDeque<int[]> dupesInProgress = new ArrayDeque<int[]>();
    for (int i = moves.size() - 1; i > 0; i--) {
      //looks for and adds duplicates in reverse order so it can remove duplicates without affecting more of the moves.
      int[]tempArray = findDupes(moves, i);
      if (tempArray[2] > 0) {
        dupesInProgress.offerLast(new int[] {tempArray[0], tempArray[1]});
        i = i - tempArray[2];
      }
    }
    return dupesInProgress;
  }

  private int[] findDupes(ArrayList<String> moves, int index) {
    int result = 0;//how many duplicates there are, not including original
    int currentIndex = index - 1;
    while (currentIndex > -1 && result < 3) {
      if (!moves.get(currentIndex).equals(moves.get(index))) {
        break;
      }
      currentIndex--;
      result++;
    }
    return new int[] {index, currentIndex+1, result};
  }
}
