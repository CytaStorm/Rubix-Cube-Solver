public class Cube {
  
  private int[]Pieces = new int[27];
  public Cube(){
    Piece[0] = new Piece(-1,-1,-1,)
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
