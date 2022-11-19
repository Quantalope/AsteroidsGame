Floater[] floats = new Floater[1];
Star[] stars = new Star[20];
public void setup()
{
  background(0);
  size(500,500);
  floats[0] = new Spaceship();
  for(int i = 0; i<stars.length; i++)
  {
    stars[i] = new Star();
  }
}
public void draw()
{
  fill(0);
  rect(0,0,500,500);
  fill(255);
  floats[0].show();
  floats[0].move();
  for(int i = 0; i<stars.length; i++)
  {
    stars[i].show();
  }
}
public void keyPressed()
{
  if(key==CODED)
  {
    if(keyCode==UP)
      floats[0].accelerate(1);
    if(keyCode==DOWN)
      floats[0].accelerate(-1);
    if(keyCode==LEFT)
      floats[0].turn(-10);
    if(keyCode==RIGHT)
      floats[0].turn(10);
  }
}
