class VHouse {

  color farmhouseRed = #7C0A02;
  color brown = color(70, 34, 9);
  color darkBrown = color(20, 12, 4);
  color ivory = #FFFFF0;

  /*
     8_____9
   /|     /|
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
  PVector[] verts = new PVector[10];

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

    // don't draw geometry under the roof
    // new Tuple3Int(3, 7, 6),
    // new Tuple3Int(3, 2, 7)

    // roof left and right
    new Tuple3Int(3, 8, 6),
    new Tuple3Int(2, 9, 7),

    // roof front
    new Tuple3Int(3, 9, 8),
    new Tuple3Int(3, 2, 9),

    // roof back
    new Tuple3Int(8, 9, 6),
    new Tuple3Int(9, 7, 6)

  };

  Face3Vec[] faces = new Face3Vec[inds.length]; //16 faces


  VHouse() {
  }

  VHouse(PVector dim) {
    this.dim = dim;

    // place verts for the box part of the house
    verts[0] = new PVector(-.5*this.dim.x, .5*this.dim.y, .5*this.dim.z); //0
    verts[1] = new PVector(.5*this.dim.x, .5*this.dim.y, .5*this.dim.z); //1
    verts[2] = new PVector(.5*this.dim.x, -.25*this.dim.y, .5*this.dim.z); //2
    verts[3] = new PVector(-.5*this.dim.x, -.25*this.dim.y, .5*this.dim.z); //3
    verts[4] = new PVector(.5*this.dim.x, .5*this.dim.y, -.5*this.dim.z); //4
    verts[5] = new PVector(-.5*this.dim.x, .5*this.dim.y, -.5*this.dim.z); //5
    verts[6] = new PVector(-.5*this.dim.x, -.25*this.dim.y, -.5*this.dim.z); //6
    verts[7] = new PVector(.5*this.dim.x, -.25*this.dim.y, -.5*this.dim.z); //7

    // place verts for the roof of the house
    verts[8] = new PVector(-.5*this.dim.x, -.75*this.dim.y, 0); //8
    verts[9] = new PVector(.5*this.dim.x, -.75*this.dim.y, 0); //9

    create();
  }
  // convenience cstr
  VHouse(float w, float h, float d) {
    this(new PVector(w, h, d));
  }

  void create() {
    for (int i=0; i < faces.length; i++) {
      faces[i] = new Face3Vec(verts[inds[i].i0], verts[inds[i].i1], verts[inds[i].i2]);
    }
  }

  void draw() {
    for (int i=0; i<faces.length; i++) {
      if (i >= 10) {
        // draw the roof as brown
        faces[i].draw(brown, darkBrown);
      } else {
        // draw the rest of the house as red
        faces[i].draw(farmhouseRed, ivory);
      }
    }
  }
}
