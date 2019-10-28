int i = 0;
Walker [] bob;
void setup()
{
size (500,500);
frameRate(15);
bob = new Walker [500];
for(int i= 0; i< bob.length;i++)
{
bob[i] = new Walker();
  }
}

void draw()
{
background (0);
for(int i =0; i<bob.length;i++)
{
bob[i].jump();
bob[i].show();
  }
}

void mousePressed()
{
redraw();
}

class Walker{
   int myX,myY;
   int thisColor;
Walker()
{
myX = 750;
myY = 250;
thisColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
void jump()
{
myX = (int)(Math.random()*500);
myY = (int)(Math.random()*500);
}
void show()
{
  fill(thisColor);
ellipse(myX,myY,(int)(Math.random()*15),(int)(Math.random()*15));
  }
}

