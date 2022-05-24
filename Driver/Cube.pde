public class Cube {
  private int[]pieces = new int[27];
  void L() {
    for (int i = 0; i < pieces.length; i+=3) {
      if (pieces.getPos("x") == -1) {
        pieces.rotateXCW();
      }
    }
  } 
  void LPrime() {
    for (int i = 0; i < pieces.length; i+=3) {
      if (pieces.getPos("x") == -1) {
        pieces.rotateXCC();
      }
    }
  }
  void R() {
    for (int i = 0; i < pieces.length; i+=3) {
      if (pieces.getPos("x") == 1) {
        pieces.rotateXCW();
      }
    }
  } 
  void RPrime() {
    for (int i = 0; i < pieces.length; i+=3) {
      if (pieces.getPos("x") == 1) {
        pieces.rotateXCC();
      }
    }
  } 
  void U() {
    for (int i = 2; i < pieces.length; i+=3) {
      if (pieces.getPos("z") == 1) {
        pieces.rotateZCW();
      }
    }
  } 
  void UPrime() {
    for (int i = 2; i < pieces.length; i+=3) {
      if (pieces.getPos("z") == 1) {
        pieces.rotateZCC();
      }
    }
  }
  void D() {
  }
  void DPrime() {
  }
  void F() {
  }
  void FPrime() {
  }
  void B() {
  }
  void BPrime() {
  }
}
