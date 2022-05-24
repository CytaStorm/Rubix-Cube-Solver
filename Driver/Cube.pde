public class Cube {
  private int[]pieces = new int[27];
  void L() {
    for (int i = 0; i < pieces.length; i++) {
      if (pieces.getPos("x") == -1) {
        pieces.rotateXCW();
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
