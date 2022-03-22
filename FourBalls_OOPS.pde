import processing.core.PApplet;
import java.util.ArrayList;

public class FourBalls_OOPS extends PApplet {
    public static final int WIDTH = 640;
    public static final int HEIGHT = 480;
    public static final int BLACK = 0;
    final int RADIUS = 20;
    
    ArrayList<Ball> balls = new ArrayList<Ball>();
    
    class Ball{
        private float X, Y, speed, radius;

        public Ball(float x, float y, float speed, float radius) {
            X = x;
            Y = y;
            this.speed = speed;
            this.radius = radius;
        }
        
        private void updateSpeed(){
            X += speed;
        }
        
        public void show() {
            ellipse(X, Y, radius, radius);
            updateSpeed();
        }
    }

    public static void main(String[] args) {
        PApplet.main(new String[]{"FourBalls_OOPS"});
    }

    @Override
    public void settings() {
        size(WIDTH, HEIGHT);
    }

    @Override
    public void setup() {
      createBallInstances();
    }

    @Override
    public void draw() {
        for(Ball b: balls){
            b.show();
        }
    }

    public void createBallInstances() {
        for (int ball=1; ball<=4; ball++) {
            float x=0, y=(HEIGHT/5)*ball;
            float speed = ball;
            
            balls.add(new Ball(x, y, speed, RADIUS));
        }
    }
}
