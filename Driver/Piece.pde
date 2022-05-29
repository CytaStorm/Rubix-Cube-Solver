import java.util.*;
public class Piece {
  private final int[][] CCW_ROT_MATRIX = new int[][]{{0, -1}, {1, 0}};
  private final int[][] CW_ROT_MATRIX = new int[][]{{0, 1}, {-1, 0}};
  private int[] pos = new int[3]; //x,y,z
  private int[] desPos;
  private String[] col = new String[3]; //white, red, blue, orange, yellow, green, in x/y/z
  public Piece(int pX, int pY, int pZ, String cX, String cY, String cZ) {
    pos[0] = pX;
    pos[1] = pY;
    pos[2] = pZ;
    col[0] = cX;
    col[1] = cY;
    col[2] = cZ;
    desPos = pos.clone();
  }

  public String toString() {
    return Arrays.toString(pos) + ", Desired Position " + Arrays.toString(getDesPos());
  }

  //Accessor, returns all colors of piece in an array
  public String[] getCol() {
    return col;
  }
  //Accessor, returns desPos
  public int[] getDesPos() {
    return desPos;
  }
  //Accessor returns pos of array
  public int[] getPos() {
    return pos;
  }
  private int[] matrixMultiply(int[]matrix, int[][]matrixMultiplier) {
    int[]result = new int[2];
    for (int i = 0; i < matrix.length; i++) {
      for (int j = 0; j < matrixMultiplier.length; j++) {
        //result[i] = matrixCellMultiply(matrix, matrixMultiplier, i, j);
        result[i] += matrix[i] * matrixMultiplier[i][j];
      }
    }
    return result;
  }
  //return is corner
  public boolean isCorner(){
    int result = 0;
    for(String i:col){
      if(i != null){
        result ++;
      }
    }
    return result == 3;
  }
  //return is edge?
  public boolean isEdge(){
    int result = 0;
    for(String i:col){
      if(i != null){
        result ++;
      }
    }
    return result == 2;
  }
  public void rotateXCW() {
    int[] tempPos = new int[] {pos[1], pos[2]};
    tempPos = matrixMultiply(tempPos, CW_ROT_MATRIX);
    pos[1] = tempPos[1];
    pos[2] = tempPos[0];
    //corner piece
    if (col[1] != null && col[2] != null && col[0] != null) { //corner piece
      String storage = col[1];
      col[1] = col[2];
      col[2] = storage;
      //return;
    } else if (col[1] == null) { //edge piece
      col[1] = col[2];
      col[2] = null;
      //return;
    } else if (col[2] == null) { //edge piece
      col[2] = col[1];
      col[1] = null;
      //return;
    } else {
      String tempCol = col[1];
      col[1] = col[2];
      col[2] = tempCol;
    }
  }
  public void swapFaceColor(String dir, String newCol) {
    switch(dir) {
    case "x": 
      col[0] = newCol;
      col[1] = null;
      col[2] = null;
      break;
    case "y": 
      col[0] = null;
      col[1] = newCol;
      col[2] = null;
      break;
    case "z":
      col[0] = null;
      col[1] = null;
      col[2] = newCol;
      break;
    default: 
      break;
    }
  }
  public void rotateXCCW() {
    int[] tempPos = new int[] {pos[1], pos[2]};
    tempPos = matrixMultiply(tempPos, CCW_ROT_MATRIX);
    pos[1] = tempPos[1];
    pos[2] = tempPos[0];

    //corner piece
    if (col[1] != null && col[2] != null && col[0] != null) {
      String storage = col[1]; 
      col[1] = col[2];
      col[2] = storage;
    } else if (col[1] == null) { //edge piece
      col[1] = col[2];
      col[2] = null;
    } else if (col[2] == null) {
      col[2] = col[1];
      col[1] = null;
    } else {
      String tempCol = col[1];
      col[1] = col[2];
      col[2] = tempCol;
    }
  }
  public void rotateYCW() {
    int[] tempPos = new int[] {pos[0], pos[2]};
    tempPos = matrixMultiply(tempPos, CW_ROT_MATRIX);
    pos[0] = tempPos[1];
    pos[2] = tempPos[0];

    //corner piece
    if (col[0] != null && col[2] != null && col[0] != null) {
      String storage = col[0];
      col[0] = col[2];
      col[2] = storage;
    } else if (col[0] == null) { //edge piece
      col[0] = col[2];
      col[2] = null;
    } else if (col[2] == null) {
      col[2] = col[0];
      col[0] = null;
    } else {
      String tempCol = col[0];
      col[0] = col[2];
      col[2] = tempCol;
    }
  }
  public void rotateYCCW() {
    int[] tempPos = new int[] {pos[0], pos[2]};
    tempPos = matrixMultiply(tempPos, CCW_ROT_MATRIX);
    pos[0] = tempPos[1];
    pos[2] = tempPos[0];

    //corner piece
    if (col[0] != null && col[2] != null && col[0] != null) {
      String storage = col[0];
      col[0] = col[2];
      col[2] = storage;
    } else if (col[0] == null) { //edge piece
      col[0] = col[2];
      col[2] = null;
    } else if (col[2] == null) {
      col[2] = col[0];
      col[0] = null;
    } else {
      String tempCol = col[0];
      col[0] = col[2];
      col[2] = tempCol;
    }
  }
  public void rotateZCW() {
    int[] tempPos = new int[] {pos[0], pos[1]};
    tempPos = matrixMultiply(tempPos, CW_ROT_MATRIX);
    pos[0] = tempPos[1];
    pos[1] = tempPos[0];

    //corner piece
    if (col[0] != null && col[2] != null && col[0] != null) {
      String storage = col[0];
      col[0] = col[1];
      col[1] = storage;
    } else if (col[1] == null) { //edge piece
      col[1] = col[0];
      col[0] = null;
    } else if (col[0] == null) {
      col[0] = col[1];
      col[1] = null;
    } else {
      String tempCol = col[1];
      col[1] = col[0];
      col[0] = tempCol;
    }
  }
  public void rotateZCCW() {
    int[] tempPos = new int[] {pos[0], pos[1]};
    tempPos = matrixMultiply(tempPos, CCW_ROT_MATRIX);
    pos[0] = tempPos[1];
    pos[1] = tempPos[0];

    //corner piece
    if (col[0] != null && col[1] != null) {
      String storage = col[0];
      col[0] = col[1];
      col[1] = storage;
    } else if (col[0] == null) { //edge piece
      col[0] = col[1];
      col[1] = null;
    } else if (col[1] == null) {
      col[1] = col[0];
      col[0] = null;
    } else {
      String tempCol = col[1];
      col[1] = col[0];
      col[0] = tempCol;
    }
  }
}
