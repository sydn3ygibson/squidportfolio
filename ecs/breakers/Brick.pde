class Brick{
  int x,y;
  PImage brick;
  
  Brick(int x, int y) {
  this.x=x;
  this.y=y;
  brick = loadImage("Brick.gif");
  } 
  
  void display() {
    imageMode(CENTER);
    brick.resize(100,100);
    image(brick,x,y);
  }
  
  void move(char dir) {
    if(dir == 'a') {
     x = x - 3;
  } else if(dir == 'd') {
     x = x + 3;
   }
  }
 
}
