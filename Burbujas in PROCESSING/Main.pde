import processing.sound.*;

Burbujas[] burbu = new Burbujas[1000]; // Array of Burbujas object
PImage img;  // Om billedet
SoundFile file;  // Om sangen

void setup() {
  // size (1200,800);
  fullScreen();
  
  // Image
  img = loadImage("Pepsi Max.jpg");
  
  // Her it loads the soundfile from the /data folder of the sketch in the PC and play it back.
  //file = new SoundFile(this, "AC DC - Highway to Hell.mp3");  // Song 1
  file = new SoundFile(this, "AC DC - Back in black.mp3");   // Song 2
  file.play();
  file.amp(0.75);
  
  //  For-Loop of Burbujas.
  for (int b = 0; b < burbu.length; b++) {
    burbu[b] = new Burbujas(random(3,35));
  }
}      

void draw() {
  background (#000000);
  
  // Image position.
  imageMode(CENTER);
  image (img, width/2,height/2,600,600);
  
  // For-Loop of Burbujas elements.
  for (int b = 0; b < burbu.length; b++) { 
    burbu[b].display();
    burbu[b].ascend();
    burbu[b].top();
  }
}
