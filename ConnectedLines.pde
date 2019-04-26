void setup() {
  size(800, 800);
  background(random(255), random(100), 100);
  int times = 1000;
  float x = width/2;
  float y = height/2;
  while (times > 0) {
    float nx = x + random(-180, 180);
    float ny = y + random(-180, 180);
    color randomColor = color(random(255), random(100), 100);
    stroke(randomColor);
    strokeWeight(20);
    line(x, y, nx, ny);

    for (int i = 0; i < 5; i++) {
      float s = random(20, 50);
      randomColor = color(random(255), random(100), 100);
      stroke(randomColor);
      strokeWeight(random(5, 30));
      randomLine(new float[]{x, y, nx, ny});
    }
    x = nx;
    y = ny;
    times--;
  }
  save("out/"+System.currentTimeMillis()+"connectedLines.jpg");
}

void randomLine(float[] args) {
  float s = random(20, 50);
  float x1 = args[0], y1 = args[1], x2 = args[2], y2 = args[3];
  line(x1+random(-s, s), y1+random(-s, s), x2+random(-s, s), y2+random(-s, s));
}
