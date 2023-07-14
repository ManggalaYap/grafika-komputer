void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(100);
  
  // Mengatur pencahayaan
  lights();
  
  // Mengatur posisi kamera
  camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  
  // Menggambar kubus
  float boxSize = 200;
  translate(width/2, height/2, 0);
  rotateX(mouseY * 0.01);
  rotateY(mouseX * 0.01);
  box(boxSize);
}
