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
