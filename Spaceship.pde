class Spaceship extends Floater
{
  public Spaceship()
  {
    corners = 11;
    xCorners = new int[]{-14,2,8,13,8,2,-13,-9,-18,-18,-9};
    yCorners = new int[]{-8,-7,-4,0,4,7,8,4,1,-1,-4};
    myCenterX = width/2;
    myCenterY = height/2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    myColor = 255;
  }
}
