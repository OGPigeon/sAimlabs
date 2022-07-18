public class ball {
    int x;
    int y;
    int size;
    
    public ball(int s) {
        this.x = -100000;
        this.y = -1000000;
        this.size = s;
        reset();
    }   
    
    void reset() {
        
        int nx = (int)random(100 ,  450);
        int ny = (int)random(100, 450);
        while(dist(nx, ny, x, y)<100) {
            nx = (int)random(100 ,  450);
            ny =(int)random(100, 450);
        }
        x = nx;
        y= ny;
    }
    
    void show() {
        circle(x, y , size);
    }
    
    void checkhit() {
        double d = dist(mouseX , mouseY, x, y);
    if(d <= s) {
        reset();
    } 
    
    }
    
}
