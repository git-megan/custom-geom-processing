class VBox {

  /*
     6------7
   /|     /|
   3-|----2 |
   | |    | |
   | 5----|-4
   |/     |/
   0------1
   */

  PVector dim;

  // the 8 unique vertices in the cube
  PVector[] verts = new PVector[8];

  Tuple3Int[] inds = {
    new Tuple3Int(0, 5, 1),
    new Tuple3Int(1, 5, 4),
    new Tuple3Int(4, 2, 1),
    new Tuple3Int(4, 7, 2),
    new Tuple3Int(6, 7, 5),
    new Tuple3Int(7, 4, 5),
    new Tuple3Int(0, 3, 5),
    new Tuple3Int(5, 3, 6),
    new Tuple3Int(0, 2, 3),
    new Tuple3Int(0, 1, 2),
    new Tuple3Int(3, 7, 6),
    new Tuple3Int(3, 2, 7)
  };

  Face3Vec[] faces = new Face3Vec[12];


  VBox() {
  }

  VBox(PVector dim) {
    this.dim = dim;

    verts[0] = new PVector(-.5*this.dim.x, .5*this.dim.y, .5*this.dim.z); //0
    verts[1] = new PVector(.5*this.dim.x, .5*this.dim.y, .5*this.dim.z); //1
    verts[2] = new PVector(.5*this.dim.x, -.5*this.dim.y, .5*this.dim.z); //2
    verts[3] = new PVector(-.5*this.dim.x, -.5*this.dim.y, .5*this.dim.z); //3
    verts[4] = new PVector(.5*this.dim.x, .5*this.dim.y, -.5*this.dim.z); //4
    verts[5] = new PVector(-.5*this.dim.x, .5*this.dim.y, -.5*this.dim.z); //5
    verts[6] = new PVector(-.5*this.dim.x, -.5*this.dim.y, -.5*this.dim.z); //6
    verts[7] = new PVector(.5*this.dim.x, -.5*this.dim.y, -.5*this.dim.z); //7

    create();
  }
  // convenience cstr
  VBox(float w, float h, float d) {
    this(new PVector(w, h, d));
  }

  void create() {
    for (int i=0; i< inds.length; i++) {
      faces[i] = new Face3Vec(verts[inds[i].i0], verts[inds[i].i1], verts[inds[i].i2]);
    }
  }
  
  void draw() {
    for (int i=0; i<faces.length; i++) {
      faces[i].draw();
    }
  }
}
