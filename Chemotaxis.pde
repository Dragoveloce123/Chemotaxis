Bacteria[] colony;

void setup()
{
  size(500, 500);
  colony = new Bacteria[60];
  for (int i = 0; i < colony.length; i++)
  {
    int c = color((int)(Math.random() * 256),
                  (int)(Math.random() * 256),
                  (int)(Math.random() * 256));
    colony[i] = new Bacteria(250, 250, c);
  }
}

void draw()
{
  background(20);
  for (int i = 0; i < colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
}

class Bacteria
{
  int myX, myY, myColor;

  Bacteria(int x, int y, int c)
  {
    myX = x;
    myY = y;
    myColor = c;
  }

  void move()
  {
    if (mouseX > myX)
      myX = myX + (int)(Math.random() * 5) - 1;
    else
      myX = myX + (int)(Math.random() * 5) - 3;

    if (mouseY > myY)
      myY = myY + (int)(Math.random() * 5) - 1;
    else
      myY = myY + (int)(Math.random() * 5) - 3;
  }

  void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 10, 10);
  }
}
