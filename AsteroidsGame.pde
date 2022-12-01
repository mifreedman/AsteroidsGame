Spaceship ship;
Star [] stars = new Star[175];
public void setup()
{
  size(500, 500);
  ship = new Spaceship();
  for (int i = 0; i <stars.length; i++) {
    stars[i] = new Star();
  }
  background(20);
  
}
public void draw()
{
  background(20);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  ship.show();
  ship.move();
}
public void keyPressed () {
  if (key == 's') {
     ship.setCenterX((Math.random()*420)+30);
     ship.setCenterY((Math.random()*420)+30);
     ship.setMyPointDirection(Math.random()*360);
     ship.setXspeed(0);
     ship.setYspeed(0);
     ship.accelerate(0.5);
  }
  if (key == 'd') {
    ship.turn(20);
  }
  if (key == 'a') {
    ship.turn(-20);
  }
  if (key == 'w') {
    ship.accelerate(1);
  }
  if (key == 'r') {
    ship.setMyColor(250, 12, 22);
  }
  if (key == 'g') {
    ship.setMyColor(182, 255, 0);
  }
  if (key == 'b') {
    ship.setMyColor(12, 12, 250);
  }
    if (key == 'c'){
  ship.accelerate(-1);
  }

}

