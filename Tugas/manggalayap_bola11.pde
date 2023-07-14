void setup() {
  size(500, 500, P3D);
  //fill(200);
  strokeWeight(5);
}

void draw() {
  //directionalLight(0, 255, 0, 0, -1, 0);
  lights();
  background(0);
  // Change height of the camera with mouseY
  camera(mouseX, mouseY*2, 120.0, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         0.0, 1.0, 0.0); // upX, upY, upZ
  noStroke();
  fill(205, 92, 92);
  sphere(60);
  stroke(255);
  line(-400, 0, 0, 400, 0, 0);
  line(0, -400, 0, 0, 400, 0);
  line(0, 0, -400, 0, 0, 400);
}
