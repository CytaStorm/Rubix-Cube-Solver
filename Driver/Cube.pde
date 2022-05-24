public class Cube {

  private int[]Pieces = new Piece[27];
  public Cube() {
    //layer 1
    Pieces[0] = new Piece(-1, -1, -1, "blue", "white", "red");
    Pieces[1] = new Piece(0, -1, -1, null, "white", "red");
    Pieces[2] = new Piece(1, -1, -1, "green", "white", "red");

    Pieces[3] = new Piece(-1, 0, -1, "blue", null, "red");
    Pieces[4] = new Piece(0, 0, -1, null, null, "red");
    Pieces[5] = new Piece(1, 0, -1, "green", null, "red");

    Pieces[6] = new Piece(-1, 1, -1, "blue", "yellow", "red");
    Pieces[7] = new Piece(0, 1, -1, null, "yellow", "red");
    Pieces[8] = new Piece(1, 1, -1, "green", "yellow", "red");

    //layer 2
    Pieces[9] = new Piece(-1, -1, 0, "blue", "white", null);
    Pieces[10] = new Piece(0, -1, 0, null, "white", null);
    Pieces[11] = new Piece(1, -1, 0, "green", "white", null);

    Pieces[12] = new Piece(-1, 0, 0, "blue", null, null);
    //skip center piece
    Pieces[13] = new Piece(1, 0, 0, "green", null, null);

    Pieces[14] = new Piece(-1, 1, 0, "blue", "yellow", null);
    Pieces[15] = new Piece(0, 1, 0, null, "yellow", null);
    Pieces[16] = new Piece(1, 1, 0, "green", "yellow", null);

    //layer 3
    Pieces[17] = new Piece(-1, -1, 1, "blue", "white", "orange");
    Pieces[18] = new Piece(0, -1, 1, null, "white", "orange");
    Pieces[19] = new Piece(1, -1, 1, "green", "white", "orange");

    Pieces[20] = new Piece(-1, 0, 1, null, "blue", "orange");
    Pieces[21] = new Piece(0, 0, 1, null, null, "orange");
    Pieces[22] = new Piece(1, 0, 1, null, "green", "orange");

    Pieces[23] = new Piece(-1, 1, 1, "blue", "yellow", "orange");
    Pieces[24] = new Piece(0, 1, 1, null, "yellow", "orange");
    Pieces[25] = new Piece(1, 1, 1, "green", "yellow", "orange");
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
