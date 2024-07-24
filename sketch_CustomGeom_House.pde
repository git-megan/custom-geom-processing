VHouse shape0;
PImage picture;

void setup() {
  size(800, 600, P3D);
  shape0 = new VHouse(200, 200, 200);
  picture = loadImage("lawn.jpg");
  picture.resize(width, height);
}

void draw() {
  background(picture);
  lights();
  translate(width/2, height/2);
  
  // rotate the shape around
  rotateY(frameCount*PI/(360 * 2));
  //rotateZ(frameCount*PI/360);
  
  fill(200);
  
  shape0.draw();
}
