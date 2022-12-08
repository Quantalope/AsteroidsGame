class Bullet extends Floater
{
  public Bullet(Spaceship ship)
  {
    myColor = 255;
    myCenterX = ship.myCenterX;
    myCenterY = ship.myCenterY;
    myXspeed = ship.myXspeed;
    myYspeed = ship.myYspeed;
    myPointDirection = ship.myPointDirection;
    accelerate(6);
  }
  public void show()
  {
    fill(myColor);   
    stroke(myColor);
    strokeWeight(5);
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    point(0,0);
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
    strokeWeight(1);
  }
  public void move()
  {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
}
