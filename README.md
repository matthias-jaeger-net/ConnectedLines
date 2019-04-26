# ConnectedLines
Processing sketch

## Starting point is this sketch I made yesterday
```java
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
      line(x+random(-s, s), y+random(-s, s), nx+random(-s, s), ny+random(-s, s));
    }
    x = nx;
    y = ny;
    times--;
  }
  save(System.currentTimeMillis()+"cchains.jpg");
}
```

## Sample output from the first run




![ccells](documentation/1.jpg)
![ccells](documentation/2.jpg)
![ccells](documentation/3.jpg)
![ccells](documentation/4.jpg)
![ccells](documentation/5.jpg)
![ccells](documentation/6.jpg)
![ccells](documentation/7.jpg)
![ccells](documentation/8.jpg)
![ccells](documentation/9.jpg)
![ccells](documentation/10.jpg)
![ccells](documentation/11.jpg)
![ccells](documentation/12.jpg)
![ccells](documentation/13.jpg)
![ccells](documentation/14.jpg)
![ccells](documentation/15.jpg)
![ccells](documentation/16.jpg)


