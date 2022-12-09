class Bullet extends Floater 
{
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getMyCenterX();
    myCenterY = theShip.getMyCenterY();
    myXspeed = theShip.getMyXspeed();
    myYspeed = theShip.getMyYspeed();
    myPointDirection = theShip.getMyPointDirection();
  }
  public double getMyCenterX() {return myCenterX;}
  public double getMyCenterY() {return myCenterY;}

  public void show() {
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move() {
    accelerate(1);
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
}
