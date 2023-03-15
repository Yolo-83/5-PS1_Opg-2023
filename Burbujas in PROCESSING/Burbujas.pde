class Burbujas {

  ///// Declare the Variables / Erklærer Variablerne.
  float x;
  float y;
  float diameter;
  float speed;

  ///// Constructor / Konstruktør.
  Burbujas (float D) {
    x = random(width);
    y = (height);
    diameter = D;
    speed = random(-0.001, 20);
  }


  /// This is the form of the Burbuja itself.
  void display() {
    stroke(random(140), random(180), random(181), random(60));
    fill(random(193), random(80), random(81), random(144));
    ellipse(x, y, diameter, diameter);
  }

  /// The direction the Burbujas will take.
  void ascend() {
    x = x + random(0, -0.000);
    y = y - speed;
  }

  /// This is the Condition, that shows what the Burbujas will du after they reach the top of the screen.
  void top() {
    if (y < diameter) {
      y = height-diameter/2;
    }
  }
}
