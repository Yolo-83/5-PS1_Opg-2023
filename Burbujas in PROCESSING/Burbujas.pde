class Burbujas {

  ///// Erklærer Variablerne.
  float x;
  float y;
  float diameter;
  float speed;

  ///// Konstruktør.
  Burbujas (float D) {
    x = random(width);
    y = (height);
    diameter = D;
    speed = random(-0.001, 20);
  }


  /// Dette er selve Burbujas.
  void display() {
    stroke(random(140), random(180), random(181), random(60));
    fill(random(193), random(80), random(81), random(144));
    ellipse(x, y, diameter, diameter);
  }

  /// Hvilke retning de tager.
  void ascend() {
    x = x + random(0, -0.000);
    y = y - speed;
  }

  /// Betingelsen om, hvad der sker, når de nåh til toppen.
  void top() {
    if (y < diameter) {
      y = height-diameter/2;
    }
  }
}
