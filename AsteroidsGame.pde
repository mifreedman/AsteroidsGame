Spaceship ship;
Star [] stars = new Star[100];
public void setup()
{
  size(500, 500);
  ship = new Spaceship();
  background(80);
  
}
public void draw()
{
  background(80);
  ship.show();
  ship.move();
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
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
}
