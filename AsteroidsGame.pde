Spaceship ship;
Star [] stars = new Star[200];
ArrayList <Asteroid> droids;
ArrayList <Bullet> bull;
public void setup()
{
  size(500, 500);
  ship = new Spaceship();
   droids = new ArrayList <Asteroid>();
   bull = new ArrayList <Bullet>();
  for (int i = 0; i <stars.length; i++) {
    stars[i] = new Star();
  }
  for (int j = 0; j < 8; j++) {
    droids.add(new Asteroid());
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
  for (int j = 0; j < droids.size(); j++) {
    droids.get(j).show();
    droids.get(j).move();
  }
  for (int i = 0; i < bull.size(); i++) {
    bull.get(i).show();
    bull.get(i).move();
    // removes bullets from list after they've gone off screen
    if ((bull.size() > 0) && (((bull.get(i).getMyCenterX() > 500 || bull.get(i).getMyCenterX() < 0)) || (bull.get(i).getMyCenterY() > 500 || bull.get(i).getMyCenterY() < 0))) {
      bull.remove(i);
      //System.out.println(bull.size());
    } 
  }
  // clears asteroids with bullets
  for (int i = 0; i < droids.size(); i++) {
    for (int j = 0; j < bull.size(); j++) {
      if (dist((float)bull.get(j).getMyCenterX(), (float)bull.get(j).getMyCenterY(), (float)droids.get(i).getMyCenterX(), (float)droids.get(i).getMyCenterY()) < 20) {
      droids.remove(i);
      break;
      }
    } 
  }
  // clears asteroids by touching spaceship
  for (int a = 0; a < droids.size(); a++) {
    if (dist((float)droids.get(a).getMyCenterX(), (float)droids.get(a).getMyCenterY(), (float)ship.getMyCenterX(), (float)ship.getMyCenterY()) < 20) {
      droids.remove(a);
    }
  }
  // displays text when all asteroids are clear
    if (droids.size() == 0) {
      // System.out.println(droids.size());
      fill(255);
      textSize(30);
      stroke(255);
      text("GOOD JOB!", 150, 250, 500, 500);
    }
  fill(255);
  text("Asteroids count: " + droids.size(), 20, 470, 500, 500);
}
public void keyPressed () {
  if (key == 'h') {
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
  if (key == 'a' || key == 'A') {
    ship.turn(-20);
  }
  if (key == 'w' || key == 'W') {
    ship.accelerate(1);
  }
  if (key == 'r' || key == 'R') {
    ship.setMyColor(250, 12, 22);
  }
  if (key == 'g' || key == 'G') {
    ship.setMyColor(182, 255, 0);
  }
  if (key == 'b' || key == 'B') {
    ship.setMyColor(12, 12, 250);
  }
  if (key == 's' || key == 'S'){
    ship.accelerate(-1);
  }
  if (key == ' ') {
    bull.add(new Bullet(ship));
  }
}
