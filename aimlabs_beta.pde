import processing.sound.*;
SoundFile file;
int x = 0;
int y = 0;
int s = 0;
void setup() {
    size(1000, 1440);
    x = width/2;
    y = height/2;
    s = 40;
    file = new SoundFile(this, "sound.wav");
}

void draw() {
    background(47, 229, 233);
    fill(0);
    circle(x, y, s);
}

void mouseClicked() {
  println("click" + frameCount);
    double d = dist(mouseX , mouseY, x, y);
  if (d <= s) {
    //file.play();
    println("hit" +d);
    x = (int)random(100 ,  900);
    y = (int)random(100, 1400);
    println(x);
    println(y);
  } else {
    println("dist" +d);
  }
}
