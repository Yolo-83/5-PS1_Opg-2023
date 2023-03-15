import processing.sound.*;

Burbujas[] burbu = new Burbujas[1000];

PImage img;  // Om billedet

SoundFile file;  // Om sangen

void setup() {
  fullScreen();
  // size (1200,800);
  
  img = loadImage("Pepsi Max.jpg");
  
  // Load a soundfile from the /data folder of the sketch and play it back
  //file = new SoundFile(this, "AC DC - Highway to Hell.mp3");
  file = new SoundFile(this, "AC DC - Back in black.mp3");
  file.play();
  file.amp(0.75);
  
  for (int b = 0; b < burbu.length; b++) {
    burbu[b] = new Burbujas(random(3,35));
  }
}      

void draw() {
  background (#000000);

  imageMode(CENTER);
  image (img, width/2,height/2,600,600);
  
  for (int b = 0; b < burbu.length; b++) {
    burbu[b].display();
    burbu[b].ascend();
    burbu[b].top();
  }
}
