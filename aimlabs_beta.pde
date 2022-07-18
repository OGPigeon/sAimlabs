import processing.sound.*;
SoundFile file;
int timer = 1000;
int score = 0;
Scoreboard sb;
ball b;
void setup() {
    size(500, 500);
    x = width / 2;
    y = height / 2;
    s = 40;
    sb = new Scoreboard(width / 2, height / 2);
    b = new ball(16)
        file= new SoundFile(this, "sound.wav");
    frameRate(60);
}

void draw() {
    println("Score: " + score);
    background(47, 229, 233);
    fill(0);
    
    if (timer <= 0 && score < 35) {
        sb.show(score);
        if (sb.clickBtn) {
            //reset
            score = 0;
            timer = 1000;
    }
        return;
    }
    b.show();
    b.checkhit();
    textSize(40);
    text("score: " + score, 180,50);
    text("Timer: " + timer / 60, 180, 100);
    timer = timer - 1;       
    
    println(frameRate);
    
    
}

