public class Cube {
  private int[]pieces = new int[27];
  void L() {
    for (int i = 0; i < pieces.length; i+=3) {
      if (pieces[i] == -1) {
        rotateXCW();
      }
    }
  } 
  void LPrime() {
    for (int i = 0; i < pieces.length; i+=3) {
      if (pieces[i] == -1) {
        rotateXCC();
      }
    }
  }
  void R() {
    for(int i = 0; i < pieces.length; i+=3){
      if(pieces[i] == 1){
        rotateXCW(); 
      }
    }
  } 
  void RPrime() {
    for(int i = 0; i < pieces.length; i+=3){
      if(pieces[i] == 1){
        rotateXCC(); 
      }
    }
  } 
  void U() {
  } 
  void UPrime() {
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
