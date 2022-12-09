class Star extends Floater 
{
  
  public Star() {
  corners = 4;  //the number of corners, a triangular floater has 3   
  xCorners = new int[] {-2, 0, 2, 0};   
  yCorners = new int[] {0, 2, 0, -2};   
  myColor = color(131, 238, 255);   
  myCenterX = (Math.random()*500); 
  myCenterY = (Math.random()*500); //holds center coordinates   
  myXspeed = 0; 
  myYspeed = 0; //holds the speed of travel in the x and y directions   
  myPointDirection = 0; //holds current direction the ship is pointing in degrees 
  
  }
}
