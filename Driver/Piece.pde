public class Piece {
  private final int[][] CCW_ROT_MATRIX = new int[][]{{0, -1},{1,0}};
  private final int[][] CW_ROT_MATRIX = new int[][]{{0, 1},{-1,0}};
  private int[] pos = new int[3];
  private int[] col = new int[3];
  public Piece(int pX, int pY, int pZ, int cX, int cY, int cZ){
    pos[0] = pX;
    pos[1] = pY;
    pos[2] = pZ;
    col[0] = cX;
    col[1] = cY;
    col[2] = cZ;
  }
  private int[] matrixMultiply(int[]matrix, int[][]matrixMultiplier){
    int[]result = new int[3];
    for(int i = 0; i < matrix.length; i++){
      for(int j = 0; j < matrixMultiplier.length; j++){
        //result[i] = matrixCellMultiply(matrix, matrixMultiplier, i, j);
        result[i] += matrix[i] * matrixMultiplier[i][j];
      }
    }
    return result;
  }
  //private int matrixCellMultiply(int[]matrix, int[][]matrixMultiplier, int row, int col){
  //  int result = 0;
  //  for(int i = 0; i < matrixMultiplier.length; i++){
  //    result += matrix[i] * matrixMultiplier[i][col];
  //  }
  //  return result;
  //}
  public void rotateXCW(){
    int[] tempPos = new int[] {pos[0],pos[2]};
    tempPos = matrixMultiply(tempPos, CW_ROT_MATRIX);
    pos[0] = tempPos[0];
    pos[2] = tempPos[1];
  }
  public void rotateXCCW(){
    int[] tempPos = new int[] {pos[0],pos[2]};
    tempPos = matrixMultiply(tempPos, CCW_ROT_MATRIX);
    pos[0] = tempPos[0];
    pos[2] = tempPos[1];
  }
  public void rotateYCW(){
    int[] tempPos = new int[] {pos[1],pos[2]};
    tempPos = matrixMultiply(tempPos, CW_ROT_MATRIX);
    pos[1] = tempPos[0];
    pos[2] = tempPos[1];
  }
  public void rotateYCCW(){
    int[] tempPos = new int[] {pos[1],pos[2]};
    tempPos = matrixMultiply(tempPos, CCW_ROT_MATRIX);
    pos[1] = tempPos[0];
    pos[2] = tempPos[1];
  }
  public void rotateZCW(){
    int[] tempPos = new int[] {pos[0],pos[1]};
    tempPos = matrixMultiply(tempPos, CW_ROT_MATRIX);
    pos[0] = tempPos[0];
    pos[1] = tempPos[1];
  }
  public void rotateZCCW(){
    int[] tempPos = new int[] {pos[0],pos[1]};
    tempPos = matrixMultiply(tempPos, CCW_ROT_MATRIX);
    pos[0] = tempPos[0];
    pos[1] = tempPos[1];
  }
}
