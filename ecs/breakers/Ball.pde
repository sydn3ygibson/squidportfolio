class Ball {
  int x, y, xspeed, yspeed;
  PImage ball;
  boolean d;


  Ball() {
    x = width/2;
    y = 200;
    xspeed = int(random(2, 0));
    yspeed = 3;
    ball = loadImage("Ball.gif");
  }

  void display() {
    imageMode(CORNER);
    ball.resize(50, 50);
    image(ball, x, y);
  }

  void move() {
    x += xspeed;
    if (d) {
      y += yspeed;
    } else {
      y -= yspeed;
    }
    if (x>= width-10 || x <= 10) {
      xspeed *= -1;
    }
    if (y>= height-10 || y<= 10) {
      yspeed = yspeed * -1;
    }
  }
}
