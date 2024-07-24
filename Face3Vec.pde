/*
Class to draw a triangle among 3 vertices
*/

class Face3Vec {

  PVector v0;
  PVector v1;
  PVector v2;

  Face3Vec() {
  }

  Face3Vec(PVector v0, PVector v1, PVector v2) {
    this.v0 = v0;
    this.v1 = v1;
    this.v2 = v2;
  }

  void draw() {
    beginShape();
    vertex(v0.x, v0.y, v0.z);
    vertex(v1.x, v1.y, v1.z);
    vertex(v2.x, v2.y, v2.z);
    endShape(CLOSE);
  }
  
    void draw(color fillCol, color strokeCol) {
    fill(fillCol);
    stroke(strokeCol);
    
    // make a thicker stroke weight for the barn construction
    strokeWeight(3);
    
    beginShape();
    vertex(v0.x, v0.y, v0.z);
    vertex(v1.x, v1.y, v1.z);
    vertex(v2.x, v2.y, v2.z);
    endShape(CLOSE);
  }
}
