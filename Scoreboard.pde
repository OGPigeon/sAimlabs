public class Scoreboard{
    int x;
    int y;
    int bx;
    int by;
   
    public Scoreboard(int x , int y) {
        this.x = x;
        this.y  = y;
         bx = x;
        by = y;
    }
    public void show(int score) {
            rectMode(CENTER);
            fill(169,169,169,150);
            noStroke();
            rect(bx , by, 400, 400,10);
            fill(255);
            text("Score = " + score, bx - 80, by - 100);
            //mouse over
            if (abs((bx + 5) - mouseX)<75 && abs(by - mouseY)<25) {
                fill(200,200,0);
            } else{
                fill(10);
            }
            rect(bx + 5, by, 150, 50,10);
        }
        boolean clickBtn() {;
            if (abs((bx + 5) - mouseX)<75 && abs(by - mouseY)<25 && mousePressed == true) {
                return true;
            } else{
                return false;
            }
            
        }
    }
