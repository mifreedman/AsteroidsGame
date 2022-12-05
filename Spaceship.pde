class Spaceship extends Floater 
{
  public Spaceship() {
  corners = 6;  //the number of corners, a triangular floater has 3   
  xCorners = new int[] {-10, 15, -10, -3, -8, -3};   
  yCorners = new int[] {-10, 0, 10, 3, 0, -3};   
  myColor = color(220, 220, 220);   
  myCenterX = 250; 
  myCenterY = 250; //holds center coordinates   
  myXspeed = 1; 
  myYspeed = 1; //holds the speed of travel in the x and y directions   
  myPointDirection = 0; //holds current direction the ship is pointing in degrees 
  }
  
 public void setXspeed(double x) {myXspeed = x;}
 public void setYspeed(double y) {myYspeed = y;}
 public void setCenterX(double x) {myCenterX = x;}
 public double getMyCenterX() {
    return myCenterX;
  }
 public void setCenterY(double y) {myCenterY = y;}
 public double getMyCenterY() {
    return myCenterY;
  }
 public void setMyPointDirection(double d) {myPointDirection = d;}
 public void setMyColor(int r, int g, int b) {myColor = color(r, g, b);}
}
