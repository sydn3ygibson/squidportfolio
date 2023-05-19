// Sydney Gibson | 25 April | Brick Breaker
boolean play;
int x, y;
Platform p1;
Brick b1, b2, b3, b4;
Ball l1;
Brick[] bricks;
int lives;
float brick1Dist;
float brick2Dist;
float brick3Dist;
float brick4Dist;
float ballDist;

void setup() {
  size(820, 666);
  p1 = new Platform();
  b1 = new Brick(100, 222);
  b2 = new Brick(300, 222);
  b3 = new Brick(500, 222);
  b4 = new Brick(700, 222);
  l1 = new Ball();
  //bricks = new Brick[10];
  lives = 9;
  play = false;
}

void draw() {
  brick1Dist = dist(l1.x, l1.y, b1.x, b1.y);
  brick2Dist = dist(l1.x, l1.y, b2.x, b2.y);
  brick3Dist = dist(l1.x, l1.y, b3.x, b3.y);
  brick4Dist = dist(l1.x, l1.y, b4.x, b4.y);
  ballDist = dist(l1.x, l1.y, p1.x, p1.y);
  println(ballDist);
  if (!play) {
    startScreen();
  } else {

    background(#2D3283);
    drawBackground();
    infoPanel();
    p1.display();
    b1.display();
    b2.display();
    b3.display();
    b4.display();
    l1.display();
    l1.move();
    if (p1.intersect(l1)) {
      l1.yspeed*=-1;
    }
    if (brick1Dist<50) {
      b1.x=1000;
    }
    if (brick2Dist<50) {
      b2.x=1000;
    }
    if (brick3Dist<50) {
      b3.x=1000;
    }
    if (brick4Dist<50) {
      b4.x=1000;
    }
    //if (ballDist<70) {
    //  l1.yspeed *= -1;
    //}

    if (l1.y>650) {
      lives = lives-1;
    }
    if (lives<1) {
      gameOver();
    }
    if (b1.x>950 && b2.x>950 && b3.x>950 && b4.x>950) {
      gameOver();
    }
  }
  // startScreen();
}

void keyPressed() {
  if (key == 'a') {
    p1.move('a');
  } else if (key == 'd') {
    p1.move('d');
  } else if (key == ' ') {
    play = true;
  }
}

void drawBackground() {
  //fill(0,200,23);
  //rect(0,500,width,80);
}

void startScreen() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Brick Break", width/2, height/2);
    text("press space to start", width/2, 600);
  textSize (20);
  text("by Sydney Gibson", width/2, 370);

}

void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(50);
  text("Game Over", width/2, height/2);
  text("Lives: " + lives, width/2, 600);
  noLoop();
}

void infoPanel() {
  fill(550);
  rect(0, 0, width, 50);
  fill(255);
  textSize (45);
  text("Lives:" + lives, 80 , 40);
}
