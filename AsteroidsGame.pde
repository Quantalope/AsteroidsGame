Star[] stars = new Star[20];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
Spaceship player;
public void setup()
{
  player = new Spaceship();
  smooth();
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
    stars[i].shmoove();
  }
  for(int i = 0; i<asteroids.size(); i++)
  {
    boolean yeet = false;
    asteroids.get(i).move();
    strokeWeight(4);
    asteroids.get(i).show();
    strokeWeight(1);
    asteroids.get(i).collision(player);
    for(int s = 0; s < bullets.size(); s++)
    {  
      if(asteroids.get(i).collision(bullets.get(s)))
      {
        yeet = true;
        bullets.remove(s);
      }
    }
    if(yeet == true)
    {
      asteroids.get(i).yeet(i);
      i--;
    }
  }
  for(int i = 0; i<bullets.size(); i++)
  {
    bullets.get(i).show();
    bullets.get(i).move();
    if(bullets.get(i).myCenterX > width || bullets.get(i).myCenterX<0 || bullets.get(i).myCenterY >height || bullets.get(i).myCenterY < 0)
    {     
      bullets.remove(i);
      i--;
    }
  }
}
public void keyPressed()
{
  if(key==CODED)
  {
    if(keyCode==UP)
      player.up = true;
    if(keyCode==DOWN)
      player.down = true;
    if(keyCode==LEFT)
      player.left = true;
    if(keyCode==RIGHT)
      player.right = true;
  }
}
public void keyReleased()
{
  if(key==CODED)
  {
    if(keyCode==UP)
      player.up = false;
    if(keyCode==DOWN)
      player.down = false;
    if(keyCode==LEFT)
      player.left = false;
    if(keyCode==RIGHT)
      player.right = false;
    if(keyCode==SHIFT)
      player.hyperspace();      
  }
  if(key == ' ')
  {
    Bullet bullet = new Bullet(player);
    bullets.add(bullet);
  }
}
