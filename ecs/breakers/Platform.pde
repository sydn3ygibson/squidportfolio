class Platform {
  int x, y, w, h;
  PImage platform;
  boolean over;

  Platform() {
    x = width/2;
    y = 700;
    w = 100;
    h = 30;
    platform = loadImage("Platform.gif");
    over = false;
  }

  void display() {
    imageMode(CENTER);
    platform.resize(100, 100);
    image(platform, x, y);
  }

  void move(char dir) {
    if (dir == 'a') {
      x = x - 40;
    } else if (dir == 'd') {
      x = x + 40;
    }
  }

  boolean intersect(Ball b) {
    if (hover(b.x, b.y)) {
      return true;
    } else {
      return false;
    }
  }

  boolean hover(int tempX, int tempY) {
    return over =
      tempX>x-w &&
      tempX<x+w &&
      tempY>y-h/.6 &&
      tempY<y+h/1;
  }
}
