Star[] stars = new Star[20];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Spaceship player = new Spaceship();
public void setup()
{
  background(0);
  size(500,500);
  for(int i = 0; i<stars.length; i++)
  {
    stars[i] = new Star();
  }
  for(int i = 0; i<10; i++)
  {
    Asteroid asteroid = new Asteroid();
    asteroids.add(i, asteroid);
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
  for(int i = 0; i<asteroids.size(); i++)
  {
    asteroids.get(i).move();
    asteroids.get(i).show();
    if(asteroids.get(i).collision())
    {
      asteroids.remove(i);
      i--;
    }
  }
}
public void keyPressed()
{
  if(key==CODED)
  {
    if(keyCode==UP)
      player.up(true);
    if(keyCode==DOWN)
      player.down(true);
    if(keyCode==LEFT)
      player.left(true);
    if(keyCode==RIGHT)
      player.right(true);
  }
}
public void keyReleased()
{
  if(key==CODED)
  {
    if(keyCode==UP)
      player.up(false);
    if(keyCode==DOWN)
      player.down(false);
    if(keyCode==LEFT)
      player.left(false);
    if(keyCode==RIGHT)
      player.right(false);
    if(keyCode==SHIFT)
      player.hyperspace();
  }
}
