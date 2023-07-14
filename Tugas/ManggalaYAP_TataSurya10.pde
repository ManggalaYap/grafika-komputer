float sunRadius = 50;
float mercuryRadius = 10;
float venusRadius = 15;
float earthRadius = 20;
float marsRadius = 18;
float jupiterRadius = 40;
float saturnRadius = 35;
float uranusRadius = 30;
float neptuneRadius = 25;

float mercuryDistance = 100;
float venusDistance = 150;
float earthDistance = 200;
float marsDistance = 250;
float jupiterDistance = 300;
float saturnDistance = 350;
float uranusDistance = 400;
float neptuneDistance = 450;

float angle = 0;
float angleIncrement = 0.01;

void setup() {
  size(800, 800, P3D);
}

void draw() {
  background(100);
  
  // Set up lights and camera
  lights();
  camera(width/2, height/2, 800, width/2, height/2, 0, 0, 1, 0);
  
  translate(width/2, height/2, 0);
  
  // Draw the Sun
  fill(255, 200, 0);
  sphere(sunRadius);
  
  // Draw the planets
  drawOrbitingPlanet(mercuryDistance, mercuryRadius, color(170), 0.5);
  drawOrbitingPlanet(venusDistance, venusRadius, color(255, 100, 0), 0.3);
  drawOrbitingPlanet(earthDistance, earthRadius, color(0, 100, 255), 0.2);
  drawOrbitingPlanet(marsDistance, marsRadius, color(255, 0, 0), 0.15);
  drawOrbitingPlanet(jupiterDistance, jupiterRadius, color(255, 200, 100), 0.1);
  drawOrbitingPlanet(saturnDistance, saturnRadius, color(200, 200, 0), 0.08);
  drawOrbitingPlanet(uranusDistance, uranusRadius, color(0, 200, 200), 0.05);
  drawOrbitingPlanet(neptuneDistance, neptuneRadius, color(0, 100, 255), 0.04);
  
  angle += angleIncrement;
}

void drawOrbitingPlanet(float distance, float radius, color c, float speedMultiplier) {
  pushMatrix();
  
  rotateY(angle * speedMultiplier);
  
  translate(distance, 0, 0);
  
  fill(c);
  sphere(radius);
  
  popMatrix();
}
