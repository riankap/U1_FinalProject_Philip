Balloon b;
Balloon[]bs=new Balloon[100000000];
int reloadTime=80;
int prevUpdate=0;
void setup()
{
  size(800, 800);
  background(235);
  smooth();
  b=new Balloon(10, 40, 20, 20, color(146, 229, 229), 20);
  noStroke();// No outline
  ellipseMode(RADIUS);//  Changes the location from which ellipses are drawn by changing the way in which parameters given to ellipse() change.
  for (int i=0; i<100; i++)
  {
    bs[i]=new Balloon(10, 40, random(-5, 7), random(-5, 7), color(random(255), random(255), random(255), 50), 20);
  }
}

void draw()
{
  background(255);

  for (int i=0; i<100; i++)
  {
    if (bs[i].isAlive)
    {
      bs[i].run();
    }

    if (mousePressed)
    {
      if (!bs[i].isAlive)
      {
        if (millis() -  prevUpdate > reloadTime )
        {
          bs[i].isAlive=true;
          bs[i].GoMouse();
          prevUpdate=millis();
        }
      }
    }
  }
 // b.run();
  if (mousePressed)
  {
    b.GoMouse();
  }

}
//include the clearing of screens