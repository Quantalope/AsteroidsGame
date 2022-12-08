class Star
{
  private int myCenterX, myCenterY, myColor;
  public Star()
  {
    myCenterX = (int)(500*Math.random());
    myCenterY = (int)(500*Math.random());
    myColor = 255;
  }
  public void shmoove()
  {
    fill(0);
    stroke(myColor);
    translate(myCenterX,myCenterY);
    ellipse(0,0,2,2);
    translate(-myCenterX,-myCenterY);
    myCenterX++;
    myCenterY++;
    if(myCenterX > width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY > height)
    {    
      myCenterY = 0;    
    } 
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }
  }
}
