// Sydney Gibson | April 6, 2023 | Timeline

void setup() {
  size(950, 450);
}

void draw() {
  background(#FFE0FE);
  drawRef();
  histEvent(150, 200, "1983", true, "My Little Pony (MLP) is introduced by Hasbro as a toy line with six original pony \ncharacters: Blue Belle, Butterscotch, Cotton Candy, Blossom, Minty, and Snuzzle.");
  histEvent(210, 325, "1984", false, "MLP gets its first animated TV special titled: Rescue at Midnight Castle, \nfeaturing the original six pony characters and the villainous Witch Midnight.");
  histEvent(310, 200, "1986", true, "MLP gets its first animated  TV series titled My Little Pony 'n Friends, which includes two segments: My Little Pony \nand The Glo Friends. The series features new pony characters and introduces the concept of cutie marks.");
  histEvent(410, 325, "1992", false, "MLP gets a second animated TV series titled My Little Pony Tales, which features \na new generation of pony characters as teenagers living in the town of Ponyland.");
  histEvent(510, 200, "2003", true, "MLP undergoes a reboot with a new toy line and animated TV series titled My Little Pony: Friendship Wishes, which features \na new cast of ponies with redesigned looks and introduces the concept of friendship wishes as a key theme.");
  histEvent(610, 325, "2010", false, "MLP undergoes a major rebranding with the launch of the animated TV series My Little Pony: Friendship is Magic created by \nLauren Faust. The show gains a large following, known as bronies, and introduces beloved characters like Twilight Sparkle and Pinkie Pie.");
  histEvent(710, 200, "2013", true, "MLP reaches a milestone with its 30th anniversary, celebrating the franchise's enduring popularity\n and cultural impact. Hasbro continues to release new toy lines and expand the brand's merchandise.");
  histEvent(800, 325, "2020", false, "MLP concludes its ninth season of My Little Pony: Friendship is Magic with a special finale episode. The show ends\n after 9 years,but MLP continues to thrive with a passionate fanbase that continues to support the franchise.");
}

void drawRef() {
  textAlign(CENTER);
  textSize(35);
  text("My Little Pony Timeline", width/2, 50);
  textSize(20);
  text("Sydney Gibson", width/2, 85);

  strokeWeight(2);
  line(50, 260, 900, 260);
  line(50, 240, 50, 280);
  line(900, 240, 900, 280);
  textSize(15);
  text("1980", 50, 230);
  text("2020", 900, 230);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x-20, y+60);
  } else {
    line(x, y, x+19, y-65);
  }
  rectMode(CENTER);
  fill(250);
  strokeWeight(2);
  rect(x, y, 80, 25, 5);
  fill(0);
  text(title, x, y+5);
  if (mouseX>x-30 && mouseX<x+30 && mouseY>y-20 && mouseY<y+30) {
    if (top) {
      text(detail, width/2, 125);
    } else {
      text(detail, width/2, 385);
    }
  }
}
