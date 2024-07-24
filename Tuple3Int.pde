/*
class to store 3 integers
 used for indexing 3D vertices to faces
 */

class Tuple3Int {

  int i0;
  int i1;
  int i2;

  Tuple3Int() {
  }

  Tuple3Int(int i0, int i1, int i2) {
    this.i0 = i0;
    this.i1 = i1;
    this.i2 = i2;
  }
}
