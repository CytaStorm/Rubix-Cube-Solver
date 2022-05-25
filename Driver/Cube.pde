public class Cube {

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
  void L() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("x") == 1) {
        pieces[i].rotateXCW();
      }
    }
  } 
  void LPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("x") == 1) {
        pieces[i].rotateXCCW();
      }
    }
  }
  void R() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("x") == -1) {
        pieces[i].rotateXCW();
      }
    }
  } 
  void RPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("x") == -1) {
        pieces[i].rotateXCCW();
      }
    }
  } 
  void U() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("z") == 1) {
        pieces[i].rotateZCW();
      }
    }
  } 
  void UPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("z") == 1) {
        pieces[i].rotateZCCW();
      }
    }
  }
  void D() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("z") == -1) {
        pieces[i].rotateZCCW();
      }
    }
  }
  void DPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("z") == -1) {
        pieces[i].rotateZCCW();
      }
    }
  }
  void F() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("y") == -1) {
        pieces[i].rotateYCW();
      }
    }
  }
  void FPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("y") == -1) {
        pieces[i].rotateYCCW();
      }
    }
  }
  void B() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("y") == 1) {
        pieces[i].rotateYCW();
      }
    }
  }
  void BPrime() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces[i].getPos("y") == 1) {
        pieces[i].rotateYCCW();
      }
    }
  }
}
