class Star
{
  private int myCenterX, myCenterY, myColor;
  public Star()
  {
    myCenterX = (int)(500*Math.random());
    myCenterY = (int)(500*Math.random());
    myColor = 255;
  }
  public void show()
  {
    fill(0);
    stroke(myColor);
    translate(myCenterX,myCenterY);
    ellipse(0,0,2,2);
    translate(-myCenterX,-myCenterY);
  }
}
