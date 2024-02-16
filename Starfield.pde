ArrayList <Particle> parts;
Particle star;
int partsNum = 1;

void setup() {
  size(600, 600);
  parts = new ArrayList <Particle> ();
  parts.add(new OddballParticle());
}

void mouseClicked() {
  parts.add(new OddballParticle());
}

void draw() {
  background(0);
  for (Particle p : parts) {
    p.show();
    p.move();
  }
  createStar();
}

void createStar() {
  for (int i = 0; i < partsNum; i++) {
    star = new Particle();
    parts.add(new Particle());
  }
}



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


class OddballParticle extends Particle {

  OddballParticle() {
  }

  void move() {
    if (keyCode == UP) {
      myY -= 2;
    } else if (keyCode == DOWN) {
      myY += 2;
    } else if (keyCode ==LEFT) {
      myX -= 2;
    } else if (keyCode == RIGHT) {
      myX += 2;
    }
  }

  void show() {
    fill(100, 100, 100, 255);
    ellipse((float)myX, (float)myY, 50, 20);
    fill(20, 250, 100, 100);
    ellipse((float)myX, (float)myY - 8, 24, 24);
  }
}


