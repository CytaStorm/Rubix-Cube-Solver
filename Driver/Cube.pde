import java.util.*;
public class Cube {
  boolean solving;
  ArrayList solutionSet = new ArrayList<String>(); 
  private final Integer[] R = new Integer[] {
    -1, 0, 0
  };
  private final Integer[] L = new Integer[] {
    1, 0, 0
  };
  private final Integer[] U = new Integer[] {
    0, 0, 1
  };
  private final Integer[] D = new Integer[] {
    0, 0, -1
  };
  private final Integer[] F = new Integer[] {
    0, 1, 0
  };
  private final Integer[] B = new Integer[] {
    0, -1, 0
  };

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

    solving = false;
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
  public Piece findPiece(String col1, String col2) {
    for (int i = 0; i < 26; i++) {
      Integer col1Index = Arrays.asList(pieces[i].getCol()).indexOf(col1);
      Integer col2Index = Arrays.asList(pieces[i].getCol()).indexOf(col2);
      if (col1Index != -1 && col2Index != -1 && col1Index != col2Index && pieces[i].getCol()[3-col1Index-col2Index] == null) {
        return pieces[i];
      }
    }
    return null;
  }
  //finds piece given 3 colors
  public Piece findPiece(String col1, String col2, String col3) {
    for (int i = 0; i < 26; i++) {
      Integer col1Index = Arrays.asList(pieces[i].getCol()).indexOf(col1);
      Integer col2Index = Arrays.asList(pieces[i].getCol()).indexOf(col2);
      Integer col3Index = Arrays.asList(pieces[i].getCol()).indexOf(col3);
      if (col1Index != -1 && col2Index != -1 && col3Index != -1 && 
        col1Index != col2Index && col2Index != col3Index && col1Index != col3Index) {
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

  //gets piece at element Piece
  public Piece getPiece(int i) {
    return pieces[i];
  }
  //accessor method: returns color of face given a face, each face will always be 1 color
  public String getCol(String face) {
    switch(face) {
    case "U" : 
      return getPiece(0, 0, 1).col[2];
    case "F" : 
      return getPiece(0, -1, 0).col[1];
    case "R" : 
      return getPiece(-1, 0, 0).col[0];
    case "L" : 
      return getPiece(1, 0, 0).col[0];
    case "B" : 
      return getPiece(0, 1, 0).col[1];
    case "D" : 
      return getPiece(0, 0, -1).col[2];
    default : 
      print("you shouldn't be here! put in a valid face U/F/R/L/B/D to get its color!");
      return null;
    }
  }

  //accessor for solutionset
  public ArrayList<String> solutionSet() {
    return solutionSet;
  }
  public void solAdd(String addition) {
    solutionSet.add(addition);
  }
  public void solRemoveLast() {
    if (solutionSet.size() > 0) {
      solutionSet.remove(solutionSet.size()-1);
    } else {
      print("nothing left to remove!");
    }
  }
  //gets rotation from face
  public String[] faceRot(Integer[]pos) {
    String[] returnMoves = new String[2];
    if (Arrays.equals(pos, R)) {
      returnMoves[0] = "R";
      returnMoves[1] = "r";
    } else if (Arrays.equals(pos, L)) {
      returnMoves[0] = "L";
      returnMoves[1] = "l";
    } else if (Arrays.equals(pos, F)) {
      returnMoves[0] = "F";
      returnMoves[1] = "f";
    } else if (Arrays.equals(pos, B)) {
      returnMoves[0] = "B";
      returnMoves[1] = "b";
    } else if (Arrays.equals(pos, D)) {
      returnMoves[0] = "D";
      returnMoves[1] = "d";
    } else if (Arrays.equals(pos, U)) {
      returnMoves[0] = "U";
      returnMoves[1] = "u";
    } else {
      println("invalid face");
      return null;
    }
    return returnMoves;
  }

  //accessor to get solving state
  public boolean isSolving() {
    return solving;
  } 
  public String colorOfDir(String dir) {
    for (int i = 0; i < colors.length
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
    println("m is called"); 
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
    RPrime(); 
      MPrime(); 
      LPrime();
  }
  public void XPrime() {
    L(); 
      M(); 
      R();
  }
  public void Z() {
    UPrime(); 
      E(); 
      DPrime();
  } 
  public void ZPrime() {
    U(); 
      EPrime(); 
      D();
  }
  public void Y() {
    FPrime(); 
      SPrime(); 
      BPrime();
  }
  public void YPrime() {
    F(); 
      S(); 
      B();
  }
  void solve() {
    // solving = true;
    // cross(cube);
    //crossCorners(cube);
    //secondLayer(cube);
    //secondCross(cube);
    //edges(cube);
    //corners(cube);
    //print("solved!");
    solving = false;
  }
  void move(String move) {
    switch(move) {
      case "L" : 
        L(); 
        break; 
        case "l" : 
        LPrime(); 
        break; 
        case "R" : 
        R(); 
        break; 
        case "r" : 
        RPrime(); 
        break; 
        case "U" : 
        U(); 
        break; 
        case "u" : 
        UPrime(); 
        break; 
        case "D" : 
        D(); 
        break; 
        case "d" : 
        DPrime(); 
        break; 
        case "F" : 
        F(); 
        break; 
        case "f" : 
        FPrime(); 
        break; 
        case "B" : 
        B(); 
        break; 
        case "b" : 
        BPrime(); 
        break; 
        default : 
        break;
    }
  }
  void cross(Cube cube) {

    println("cross WIP!"); 
      Piece ulPiece = cube.findPiece(cube.getCol("U"), cube.getCol("L")); //finds pos of 4 edge pieces for up cross
      Piece urPiece = cube.findPiece(cube.getCol("U"), cube.getCol("R")); 
      Piece ubPiece = cube.findPiece(cube.getCol("U"), cube.getCol("B")); 
      Piece ufPiece = cube.findPiece(cube.getCol("U"), cube.getCol("F")); 

      //println(ulPiece);
      //println(urPiece);
      //println(uuPiece);
      //println(udPiece);

      crossEdgeSolver(cube, ulPiece, cube.getPiece(1, 0, 0), "L L", "E L e l"); 
      crossEdgeSolver(cube, urPiece, cube.getPiece(-1, 0, 0), "R R", "e R E r"); 
      move(cube, "Z"); 
      crossEdgeSolver(cube, ubPiece, cube.getPiece(0, -1, 0), "L L", "E L e l"); 
      crossEdgeSolver(cube, ufPiece, cube.getPiece(0, 1, 0), "R R", "e R E r"); 
      move(cube, "z");
  }
  void crossEdgeSolver(Cube cube, Piece edgePiece, Piece facePiece, String move1, String move2) {
    println("crossEdgeSolver WIP"); 
      //checks if piece is in right place
      if (Arrays.equals(edgePiece.getPos(), edgePiece.getDesPos())) {
      println("In right place!"); 
        return;
    }
    String undoMove = null; 
      String cw; 
      String ccw; 
      if (edgePiece.getPos()[2] == 0) {//if edge piece is in middle row
      int[] tempPos = edgePiece.getPos().clone(); 
        tempPos[0] = 0; 
        cw = cube.faceRot(tempPos)[1]; 
        ccw = cube.faceRot(tempPos)[0]; 

        if (Arrays.equals(edgePiece.getPos(), new int[] {1, -1, 0}) || Arrays.equals(edgePiece.getPos(), new int[]{-1, 1, 0})) {
        move(cube, cw); 
          undoMove = ccw;
      } else {
        move(cube, ccw); 
          undoMove = cw;
      }
    } else if (edgePiece.getPos()[2] == 1) {
      int[] tempPos = edgePiece.getPos().clone(); 
        tempPos[2] = 0; 
        cw = cube.faceRot(tempPos)[1]; 
        ccw = cube.faceRot(tempPos)[0]; 
        move(cube, ccw + " " + ccw); 
        if (edgePiece.getPos()[0] != facePiece.getPos()[0]) {
        undoMove = cw + " " + cw;
      }
    }

    print("Is it in top? " + (edgePiece.getPos()[2] == -1)); 

      int count = 0; 
      while (!Arrays.equals(new int[]{edgePiece.getPos()[0], edgePiece.getPos()[1]}, 
      new int[]{facePiece.getPos()[0], facePiece.getPos()[1]})) {
      move(cube, "B"); 
        count += 1; 
        if (count == 10) {
        print("stuck in loop?");
      }
    }
    if (undoMove != null) {
      move(cube, undoMove);
    }
    if (edgePiece.getCol()[0] == facePiece.getCol()[0]) {
      move(cube, move1);
    } else {
      move(cube, move2);
    }
  }

  //boolean isWhiteCorner(Piece corner) {
  //  return ((corner.isCorner() && corner.getCol()[0] == "white")  || 
  //    (corner.isCorner() && corner.getCol()[1] == "white") || 
  //    (corner.isCorner() && corner.getCol()[2] == "white"));
  //}  
  //boolean isCornersIns(int x, int y, int z) {
  //  if (getPiece(x, y, z).isCorner()) {
  //    return(getPiece(x, y, z).getDir(x,y,z,) == getPiece(1,1,2
  //  }
  //} 
  //boolean checkWhiteInU() {
  //  for (int i = 0; i < pieces.length; i++) {
  //    if (pieces[i].isCorner()) {
  //      return (pieces[i].getCol()[0] ==
  //    }
  //  }
  //}
  //boolean preparedWhiteCorners(Cube cube){
  //  if(cube.getPiece(2,0,0).isCorner() && cube.getPiece(2,0,0).getDir()
  //}
  //void insertCorners() {
  //  for (int i = 0; i < 26; i++) {
  //    if (pieces[i].isCorner() && isWhiteCorner(pieces[i])) {
  //      if (pieces[i].getPos()[0] == 0) {
  //        if (pieces[i].getPos()[2] == 0) {
  //          move("UPrime");
  //        } else {
  //          move("U"); 
  //            move("U");
  //        }
  //      } else {
  //        if (pieces[i].getPos()[2] == 2) {
  //          move("U");
  //        }
  //      }
  //      int uTurns = 0; 
  //        int yRot = 0; 
  //        while
  //    }
  //  }
  //} 
  void moveCorners(Piece corner){
    if(corner.isCorner()&&
  }
}
