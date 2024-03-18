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
