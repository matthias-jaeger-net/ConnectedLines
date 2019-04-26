final int SKETCH_W   = 800, SKETCH_H   = 800;
final int OUTER_LOOP = 300,  INNER_LOOP = 200;
final int SPREAD     = 180;

final int MIN_STROKEWEIGHT = 2;
final int MAX_STROKEWEIGHT = 4;

float x = SKETCH_W * 0.5f;
float y = SKETCH_H * 0.5f;
float nx = x, ny = y;

color randomColor() { return color(random(255), random(100), 100, 200); }

void randomLine(float[] args, float s) {
  stroke(randomColor());
  strokeWeight(random(MIN_STROKEWEIGHT, MAX_STROKEWEIGHT));
  for (int i = 0; i < args.length; i++) args[i] += random(-s, s);
  line(args[0], args[1], args[2], args[3]);
}

void renderConnectedLines() {
  background(255);
  for (int i = 0; i < OUTER_LOOP; i++) {
    float nx = x + random(-SPREAD, SPREAD);
    float ny = y + random(-SPREAD, SPREAD);
    line(x, y, nx, ny);
    for (int j = 0; j < INNER_LOOP; j++) 
      randomLine(new float[]{x, y, nx, ny}, random(20, 50));
    x = nx;
    y = ny;
  }
  saveOutput();
}

void saveOutput() {   save("out/"+ System.currentTimeMillis() + "-cL.jpg"); }
void settings()   {  size(SKETCH_W, SKETCH_H); }
void setup()      { noLoop(); }
void draw()       { renderConnectedLines(); }
