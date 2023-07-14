float angle = 0;
float rotationSpeed = 0.01;
float circleSize = 400;
float centerX, centerY;

void setup() {
  size(800, 800);
  centerX = width/2;
  centerY = height/2;
}

void draw() {
  colorMode(HSB, 360, 100, 100);
  float hue = map(mouseX, 0, width, 0, 360);
  background(hue, 50, 100);

  translate(centerX, centerY);
  rotate(angle);
  fractalCircle(0, 0, circleSize, 10);
  angle += rotationSpeed;
}

void fractalCircle(float x, float y, float radius, int level) {
  if (level > 0) {
    // Lingkaran merah
    fill(0, 100, 100);
    ellipse(x, y, radius, radius);

    // Lingkaran biru
    fill(240, 100, 100);
    ellipse(x, y, radius/2, radius/2);

    // Rekursif untuk menggambar fraktal di dalam lingkaran biru
    fractalCircle(x - radius/4, y, radius/2, level - 1);
    fractalCircle(x + radius/4, y, radius/2, level - 1);
  }
}
