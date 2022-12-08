class Asteroid extends Floater
{
  private float rotSpeed;
  public Asteroid()
  {
    rotSpeed = (float)Math.random();
    corners = 7;
    xCorners = new int[7];
    yCorners = new int[7];
    xCorners[0] = (int)(Math.random()*15+5);
    xCorners[1] = (int)(Math.random()*15);
    xCorners[2] = (int)(Math.random()*-5);
    xCorners[3] = (int)(Math.random()*-15-5);
    xCorners[4] = (int)(Math.random()*-15);
    xCorners[5] = (int)(Math.random()*15);
    xCorners[6] = (int)(Math.random()*15+5);
    yCorners[0] = (int)(Math.random()*15);
    yCorners[1] = (int)(Math.random()*15+5);
    yCorners[2] = (int)(Math.random()*15);
    yCorners[3] = (int)(Math.random()*-15);
    yCorners[4] = (int)(Math.random()*-15-5);
    yCorners[5] = (int)(Math.random()*-15);
    yCorners[6] = (int)(Math.random()*15);
    myCenterX = Math.random()*width;
    myCenterY = Math.random()*height;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*360;
    myColor = 100;
    accelerate(1);
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public boolean collision(Bullet bull)
  {
    float one = (float)myCenterX-15;
    float two = (float)myCenterY-15;
    if(one<bull.myCenterX&&two<bull.myCenterY&&one+30>bull.myCenterX&&two+30>bull.myCenterY)
    {
      return true;
    }
    return false;
  }
}
