public class Solve {
  public void solve(Cube cube) {
    cross(cube);
    //crossCorners(cube);
    //secondLayer(cube);
    //secondCross(cube);
    //edges(cube);
    //corners(cube);
    //print("solved!");
  }
  public void cross(Cube cube) {
    println("cross WIP!");
    Piece ul_piece = cube.find(cube.getCol("U"), cube.getPiece(1, 0, 0).getCol("x")); //finds pos of 4 edge pieces for up cross
    Piece ur_piece = cube.find(cube.getCol("U"), cube.getPiece(-1, 0, 0).getCol("x")); 
    Piece uu_piece = cube.find(cube.getCol("U"), cube.getPiece(1, 0, 0).getCol("x")); 
    Piece ud_piece = cube.find(cube.getCol("U"), cube.getPiece(1, 0, 0).getCol("x")); 
    
    //crossEdgeSolver(f1_piece, cube.getPiece(21)
  }
  public void crossEdgeSolver(Cube cube, Piece edgePiece, Piece refPiece, String move1, String move2){
   print("crossEdgeSolver WIP"); 
   //checks if piece is in right place
   if((edgePiece.getPos().equals(new int[]{refPiece.getPos()[0], refPiece.getPos()[1], refPiece.getPos()[2])) &&
       edgePiece.getCol["z"].equals(cube.getCol("U"))){
         return;
       }
   String undoMove;
   if(edgePiece.getPos[2] == 1){
     
     
       
  }
  public void crossCorners(Cube cube) {
    println("crossCorners WIP!");
  }
  public void secondLayer(Cube cube) {
    println("secondLayer WIP!");
  }
  public void secondCross(Cube cube) {
    println("secondCross WIP!");
  }
  public void edges(Cube cube) {
    println("edges WIP!");
  }
  public void corners(Cube cube) {
    println("corners WIP!");
  }
}
