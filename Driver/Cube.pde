public class Cube {

  private int[]Pieces = new Piece[27];
  public Cube() {
    //layer 1
    Pieces[0] = new Piece(-1, -1, -1, "blue", "white", "red");
    Pieces[1] = new Piece(0, -1, -1, "white", null, "red");
    Pieces[2] = new Piece(1, -1, -1, "green", "white", "red");

    Pieces[3] = new Piece(-1, 0, -1, "blue", null, "red");
    Pieces[4] = new Piece(0, 0, -1, null, null, "red");
    Pieces[5] = new Piece(1, 0, -1, null, "green", "red");

    Pieces[6] = new Piece(-1, 1, -1, "", "", "red");
    Pieces[7] = new Piece(0, 1, -1, "", "", "red");
    Pieces[8] = new Piece(1, 1, -1, "", "", "red");

    //layer 2
    Pieces[9] = new Piece(-1, -1, 0, "", "", "");
    Pieces[10] = new Piece(0, -1, 0, "", "", "");
    Pieces[11] = new Piece(1, -1, 0, "", "", "");

    Pieces[12] = new Piece(-1, 0, 0, "", "", "");
    //skip center piece
    Pieces[13] = new Piece(1, 0, 0, "", "", "");

    Pieces[14] = new Piece(-1, 1, 0, "", "", "");
    Pieces[15] = new Piece(0, 1, 0, "", "", "");
    Pieces[16] = new Piece(1, 1, 0, "", "", "");

    //layer 3
    Pieces[17] = new Piece(-1, -1, 1, "", "", "");
    Pieces[18] = new Piece(0, -1, 1, "", "", "");
    Pieces[19] = new Piece(1, -1, 1, "", "", "");

    Pieces[20] = new Piece(-1, 0, 1, "", "", "");
    Pieces[21] = new Piece(0, 0, 1, "", "", "");
    Pieces[22] = new Piece(1, 0, 1, "", "", "");

    Pieces[23] = new Piece(-1, 1, 1, "", "", "");
    Pieces[24] = new Piece(0, 1, 1, "", "", "");
    Pieces[25] = new Piece(1, 1, 1, "", "", "");
  }
  void L() {
    for (int i = 0; i < pieces.length; i++) {
      if (Piece.getPos("x") == -1) {
        Piece.rotateXCW();
      }
    }
  } 
  void LPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("x") == -1) {
        pieces.rotateXCC();
      }
    }
  }
  void R() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("x") == 1) {
        pieces.rotateXCW();
      }
    }
  } 
  void RPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("x") == 1) {
        pieces.rotateXCC();
      }
    }
  } 
  void U() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("z") == 1) {
        pieces.rotateZCW();
      }
    }
  } 
  void UPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("z") == 1) {
        pieces.rotateZCC();
      }
    }
  }
  void D() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("z") == -1) {
        pieces.rotateZCC();
      }
    }
  }
  void DPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("z") == -1) {
        pieces.rotateZCC();
      }
    }
  }
  void F() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("y") == 1) {
        pieces.rotateYCW();
      }
    }
  }
  void FPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("y") == 1) {
        pieces.rotateYCC();
      }
    }
  }
  void B() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("y") == -1) {
        pieces.rotateYCW();
      }
    }
  }
  void BPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("y") == -1) {
        pieces.rotateYCC();
      }
    }
  }
}
