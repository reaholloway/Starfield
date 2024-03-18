class Particle {
  double myX, myY, mySpeed, myAngle;
  int myColor;
  float yth = 10;
  float xth = 8;
  float tl = 4;
  float tw = tl/2;
  float counter;
  float a;

  Particle() {
    myX = width/2;
    myY = height/2;
    myAngle = Math.random() * 2 * Math.PI;
    mySpeed = Math.random() * 5;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }

  void move() {
    counter++;
    a = map(counter * (float)mySpeed, (float)0, (float)width, (float)20, (float)255);
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }

  void show() {
  fill(myColor, a);
    noStroke();
    triangle((float)myX, (float)myY, (float)myX + tw, (float)myY - yth, (float)myX + tl, (float)myY);
    noStroke();
    triangle((float)myX, (float)myY, (float)myX - xth, (float)myY + tw, (float)myX, (float)myY + tl);
    noStroke();
    triangle((float)myX + tl, (float)myY, (float)myX + xth + tl, (float)myY + tw, (float)myX + tl, (float)myY + tl);
    noStroke();
    triangle((float)myX, (float)myY + tl, (float)myX + tw, (float)myY + yth + tl, (float)myX + tl, (float)myY + tl);
    noStroke();
    square((float)myX, (float)myY, tl);
  }
}
