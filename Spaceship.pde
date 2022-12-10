class Spaceship extends Floater
{
  private boolean left, right, up, down;
  public Spaceship()
  {
    corners = 11;
    xCorners = new int[]{-14,2,8,13,8,2,-13,-9,-18,-18,-9};
    yCorners = new int[]{-8,-7,-4,0,4,7,8,4,1,-1,-4};
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    myColor = 255;
  }
  public void hyperspace()
  {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myPointDirection = Math.random()*360;
  }
  public void left(boolean active)
  {
    left=active;
  }
  public void right(boolean active)
  {
    right=active;
  }
  public void up(boolean active)
  {
    up=active;
  }
  public void down(boolean active)
  {
    down=active;
  }
  public void move()
  {
    if(myXspeed > 5)
      myXspeed = 5;
    if(myYspeed > 5)
      myYspeed = 5;
      if(myXspeed < -5)
      myXspeed = -5;
    if(myYspeed < -5)
      myYspeed = -5;
    super.move();
    myXspeed = myXspeed/1.01;
    myYspeed = myYspeed/1.01;
  }
  public void up()
  {
    accelerate(.2);
  }
  public void down()
  {
    myXspeed/=1.05; 
    myYspeed/=1.05;
  }
  public void left()
  {
    turn(-5);
  }
  public void right()
  {
    turn(5);
  }
}
