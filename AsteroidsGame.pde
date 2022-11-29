Star[] stars = new Star[20];
Spaceship player = new Spaceship();
public void setup()
{
  background(0);
  size(500,500);
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
  player.show();
  player.move();
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
      player.accelerate(1);
    if(keyCode==DOWN)
      player.accelerate(-1);
    if(keyCode==LEFT)
      player.turn(-10);
    if(keyCode==RIGHT)
      player.turn(10);
    if(keyCode==SHIFT)
      player.hyperspace();
  }
}
