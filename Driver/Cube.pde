public class Cube {

  private final String CU = "orange";
  private final String CF = "white";
  private final String CR = "blue";
  private final String CL = "green";
  private final String CB = "yellow";
  private final String CD = "red";

  private Piece[] pieces = new Piece[27];
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

    pieces[20] = new Piece(-1, 0, 1, null, "blue", "orange");
    pieces[21] = new Piece(0, 0, 1, null, null, "orange");
    pieces[22] = new Piece(1, 0, 1, null, "green", "orange");

    pieces[23] = new Piece(-1, 1, 1, "blue", "yellow", "orange");
    pieces[24] = new Piece(0, 1, 1, null, "yellow", "orange");
    pieces[25] = new Piece(1, 1, 1, "green", "yellow", "orange");
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
    int ans = 0;
    for (int i = 0; i < 27; i++) {
      if (solveCube.getPiece(i).getPos("x") == x &&
        solveCube.getPiece(i).getPos("y") == y && 
        solveCube.getPiece(i).getPos("z") == z) {
        ans = i;
      }
    }
    return solveCube.getPiece(ans);
  }

  public Piece getPiece(int pieceNum) {
    //accessor method to get each piece 0-25
    switch(pieceNum) {
    case 0: 
      return pieces[0];
    case 1: 
      return pieces[1];
    case 2: 
      return pieces[2];
    case 3: 
      return pieces[3];
    case 4: 
      return pieces[4];
    case 5: 
      return pieces[5];
    case 6: 
      return pieces[6];
    case 7: 
      return pieces[7];
    case 8: 
      return pieces[8];
    case 9: 
      return pieces[9];
    case 10: 
      return pieces[10];
    case 11: 
      return pieces[11];
    case 12: 
      return pieces[12];
    case 13: 
      return pieces[13];
    case 14: 
      return pieces[14];
    case 15: 
      return pieces[15];
    case 16: 
      return pieces[16];
    case 17: 
      return pieces[17];
    case 18: 
      return pieces[18];
    case 19: 
      return pieces[19];
    case 20: 
      return pieces[20];
    case 21: 
      return pieces[21];
    case 22: 
      return pieces[22];
    case 23: 
      return pieces[23]; 
    case 24: 
      return pieces[24];
    case 25: 
      return pieces[25];
    default: 
      print("please enter a valid piece from 0-25");
      return null;
    }
  }
  public void L() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("x") == 1) {
        pieces[i].rotateXCW();
      }
    }
  } 
  public void LPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("x") == 1) {
        pieces[i].rotateXCCW();
      }
    }
  }
  public void R() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("x") == -1) {
        pieces[i].rotateXCW();
      }
    }
  } 
  public void RPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("x") == -1) {
        pieces[i].rotateXCCW();
      }
    }
  } 
  public void U() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("z") == 1) {
        pieces[i].rotateZCW();
      }
    }
  } 
  public void UPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("z") == 1) {
        pieces[i].rotateZCCW();
      }
    }
  }
  public void D() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("z") == -1) {
        pieces[i].rotateZCCW();
      }
    }
  }
  public void DPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("z") == -1) {
        pieces[i].rotateZCCW();
      }
    }
  }
  public void F() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("y") == -1) {
        pieces[i].rotateYCW();
      }
    }
  }
  public void FPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("y") == -1) {
        pieces[i].rotateYCCW();
      }
    }
  }
  public void B() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("y") == 1) {
        pieces[i].rotateYCW();
      }
    }
  }
  public void BPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("y") == 1) {
        pieces[i].rotateYCCW();
      }
    }
  }
}
