import java.util.*;
public class Cube {

  private final String CU = "orange";
  private final String CF = "white";
  private final String CR = "blue";
  private final String CL = "green";
  private final String CB = "yellow";
  private final String CD = "red";

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

  //finds piece given 2 colors
  public Piece getCol(String col1, String col2) {
    for (int i = 0; i < 26; i++) {
      Integer col1Index = Arrays.asList(pieces[i].getCol()).indexOf(col1);
      Integer col2Index = Arrays.asList(pieces[i].getCol()).indexOf(col2);
      if (col1Index != -1 && col2Index != -1 && col1Index != col2Index && pieces[i].getCol()[3-col1Index-col2Index] == null) {
        return pieces[i];
      }
    }
    return null;
  }
  //accessor method: returns color of face given a face, each face will always be 1 color
  public String getCol(String face) {
    switch(face) {
    case "U" : 
      return CU;
    case "F" : 
      return CF;
    case "R" : 
      return CR;
    case "L" : 
      return CL;
    case "B" : 
      return CB;
    case "D" : 
      return CD;
    default : 
      print("you shouldn't be here! put in a valid face U/F/R/L/B/D to get its color!");
      return null;
    }
  }

  public Piece findPiece(int x, int y, int z) {
    for (int i = 0; i < 26; i++) {
      if (pieces[i].getPos()[0] == x &&
        pieces[i].getPos()[1] == y && 
        pieces[i].getPos()[2] == z) { 
        return pieces[i];
      }
    }
    return null;
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
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos()[0] == -1) {
        pieces[i].rotateXCW();
      }
    }
  } 
  public void RPrime() {
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
    Piece frontPiece = findPiece(0, -1, 0); 
    String frontCol = frontPiece.getCol("F");  
    Piece topPiece = findPiece(0, 0, 1); 
    String topCol = topPiece.getCol("U"); 
    Piece backPiece = findPiece(0, 1, 0); 
    String backCol = backPiece.getCol("B"); 
    Piece downPiece = findPiece(0, 0, -1); 
    String downCol = downPiece.getCol("D"); 
    frontPiece.swapFaceColor("y", topCol);
    topPiece.swapFaceColor("z", backCol);
    backPiece.swapFaceColor("y", downCol);
    downPiece.swapFaceColor("z", frontCol);
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[0] == 0) {
        pieces[i].rotateXCCW();
      }
    }
  }
  public void MPrime() {
    Piece frontPiece = findPiece(0, -1, 0); 
    String frontCol = frontPiece.getCol("F");  
    Piece topPiece = findPiece(0, 0, 1); 
    String topCol = topPiece.getCol("U"); 
    Piece backPiece = findPiece(0, 1, 0); 
    String backCol = backPiece.getCol("B"); 
    Piece downPiece = findPiece(0, 0, -1); 
    String downCol = downPiece.getCol("D"); 
    frontPiece.swapFaceColor("y", downCol);
    topPiece.swapFaceColor("z", frontCol);
    backPiece.swapFaceColor("y", topCol);
    downPiece.swapFaceColor("z", backCol);
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[0] == 0) {
        pieces[i].rotateXCW();
      }
    }
  }
  public void E() {
    Piece frontPiece = findPiece(0, -1, 0); 
    String frontCol = frontPiece.getCol("F");  
    Piece rightPiece = findPiece(-1, 0, 0); 
    String rightCol = rightPiece.getCol("R"); 
    Piece backPiece = findPiece(0, 1, 0); 
    String backCol = backPiece.getCol("B"); 
    Piece leftPiece = findPiece(1, 0, 0); 
    String leftCol = leftPiece.getCol("L"); 
    frontPiece.swapFaceColor("y", leftCol);
    rightPiece.swapFaceColor("x", frontCol);
    backPiece.swapFaceColor("y", rightCol);
    leftPiece.swapFaceColor("x", backCol);
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[2] == 0) {
        pieces[i].rotateXCCW();
      }
    }
  }
  public void EPrime() {
    Piece frontPiece = findPiece(0, -1, 0); 
    String frontCol = frontPiece.getCol("F");  
    Piece rightPiece = findPiece(-1, 0, 0); 
    String rightCol = rightPiece.getCol("R"); 
    Piece backPiece = findPiece(0, 1, 0); 
    String backCol = backPiece.getCol("B"); 
    Piece leftPiece = findPiece(1, 0, 0); 
    String leftCol = leftPiece.getCol("L"); 
    frontPiece.swapFaceColor("y", rightCol);
    rightPiece.swapFaceColor("x", backCol);
    backPiece.swapFaceColor("y", leftCol);
    leftPiece.swapFaceColor("x", frontCol);
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[2] == 0) {
        pieces[i].rotateXCW();
      }
    }
  } 
  public void S() {
    Piece upPiece = findPiece(0, 0, 1); 
    String upCol = upPiece.getCol("U");  
    Piece rightPiece = findPiece(-1, 0, 0); 
    String rightCol = rightPiece.getCol("R"); 
    Piece downPiece = findPiece(0, 0, -1); 
    String downCol = downPiece.getCol("D"); 
    Piece leftPiece = findPiece(1, 0, 0); 
    String leftCol = leftPiece.getCol("L"); 
    upPiece.swapFaceColor("y", leftCol);
    rightPiece.swapFaceColor("x", upCol);
    downPiece.swapFaceColor("y", rightCol);
    leftPiece.swapFaceColor("x", downCol);
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[1] == 0) {
        pieces[i].rotateXCW();
      }
    }
  } 
  public void SPrime() {
    Piece upPiece = findPiece(0, 0, 1); 
    String upCol = upPiece.getCol("U");  
    Piece rightPiece = findPiece(-1, 0, 0); 
    String rightCol = rightPiece.getCol("R"); 
    Piece downPiece = findPiece(0, 0, -1); 
    String downCol = downPiece.getCol("D"); 
    Piece leftPiece = findPiece(1, 0, 0); 
    String leftCol = leftPiece.getCol("L"); 
    upPiece.swapFaceColor("y", rightCol);
    rightPiece.swapFaceColor("x", downCol);
    downPiece.swapFaceColor("y", leftCol);
    leftPiece.swapFaceColor("x", upCol);
    for (int i = 0; i < pieces.length; i ++) {
      if (pieces[i].getPos()[1] == 0) {
        pieces[i].rotateXCCW();
      }
    }
  }
  public void X() {
    R();
    MPrime();
    LPrime();
  }
  public void XPrime() {
    L();
    M(); 
    RPrime();
  }
  public void Y() {
    
  } 
  public void YPrime() {
  }
  public void Z() {
  }
  public void ZPrime() {
  }
}
