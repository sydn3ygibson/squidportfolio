class Ball {
  int x, y, xspeed, yspeed;
  PImage ball;
  boolean d;


  Ball() {
    x = 10;
    y = 500;
    xspeed = int(random(3, 0));
    yspeed = 5;
    ball = loadImage("Ball.gif");
  }

  void display() {
    imageMode(CENTER);
    ball.resize (50,50);
    image(ball, x, y);
  }

  void move() {
    x += xspeed;
    if (d) {
      y += yspeed;
    } else {
      y -= yspeed;    //width-10 10 height-10 10
    }
    if (x>= width-10 || x <= 10) {
      xspeed *= -1;
    }
    if (y>= height-10 || y<= 10) {
      yspeed = yspeed * -1;
    }
  }
}
