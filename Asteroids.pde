class Asteroid extends Floater 
{
  protected double rotSpeed;
  public Asteroid() {
    corners = (int)(Math.random()*8)+2; 
    xCorners = new int[corners];   
    yCorners = new int[corners];
    for (int i = 1; i < corners; i+=2) {
      xCorners[i] = (int)(Math.random()*3)+10;   
      yCorners[i] = (int)(Math.random()*20)-10;
      xCorners[i-1] = (int)(Math.random()*20)-10;   
      yCorners[i-1] = (int)(Math.random()*3)+10;
      rotSpeed = (Math.random()*5)-2;
    }
    myColor = color(80, 80, 80);   
    myCenterX = Math.random()*width; 
    myCenterY = Math.random()*height;
    myXspeed = Math.random()*2; 
    myYspeed = Math.random()*2; //holds the speed of travel in the x and y directions   
    myPointDirection = Math.random()*360; 
  }

  public double getMyCenterX() {
    return myCenterX;
  }
  public double getMyCenterY() {
    return myCenterY;
  }
  public int getCorners() {
    return corners;
  }
  
  public void move() {
    super.move();
    turn(rotSpeed);
  }
}
