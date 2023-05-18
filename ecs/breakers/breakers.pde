// Sydney Gibson | 25 April | Brick Breaker
boolean play;
int x, y;
Platform p1;
Brick b1;
Ball l1;
Brick[] bricks;
PImage bg;
int lives;
float brickDist;
float ballDist;

void setup() {
  size(1000, 800);
  p1 = new Platform();
  b1 = new Brick();
  l1 = new Ball();
  bricks = new Brick[10];
  lives = 3;
  play = false;
}

void draw() {
  brickDist = dist(l1.x, l1.y, b1.x, b1.y);
  ballDist = dist(l1.x, l1.y, p1.x, p1.y);
  println(ballDist);
  if (!play) {
    startScreen();
  } else {

    background(0);
    infoPanel();
    p1.display();
    b1.display();
    l1.display();
    l1.move();
    if (p1.intersect(l1)) {
      l1.yspeed*=-1;
    }
    //if (brickDist<10) {
      
    //} 
    //if (ballDist<50) {
    //  l1.yspeed *= -1;
    //}

    if (l1.y>height) {
      gameOver();
    } if (lives<1) {
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

void startScreen() {
  background(50);
  fill(255);
  textAlign(CENTER);
  textSize(50);
  text("Brick Break", width/2, height/2.5);
  textSize(20);
  text("by Sydney Gibson", width/2, 360);
  textSize(40);
  text("Press Space to Start", width/2, 575);
}

void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Game Over", width/2, height/2);
  text("Lives" + lives, width/2, 60);
  text("press space to restart", width/2, 800);
  noLoop();
}

void infoPanel() {
  fill(50);
  rect(0, 0, width, 50);
  fill(255);
  text("Lives: " + lives, 70, 40);
}
