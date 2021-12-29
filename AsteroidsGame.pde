Spaceship bob = new Spaceship();
Star[] spaceSky = new Star[200];
ArrayList <Asteroid> AsList = new ArrayList <Asteroid>();
public void setup()
{
  size(500, 500);
  for (int i = 0; i <spaceSky.length; i++) {
    spaceSky[i] = new Star();
  }
  for (int i=0; i<10; i++)
    AsList.add(new Asteroid());
}
public void draw()
{
  background(#2A0D6F);
  for (int i=0; i<spaceSky.length; i++) {
    spaceSky[i].show();
  }

  bob.show();
  bob.move();
  for (int n=0; n<AsList.size(); n++) {
    AsList.get(n).show();
    AsList.get(n).move();
    double d = dist((float)bob.getX(), (float)bob.getY(), (float)AsList.get(n).getX(), (float) AsList.get(n).getY());
    if (d<16)
      AsList.remove(n);
  }


  
}
public void keyPressed() {
  //turn
  if (key == 'a')
    bob.turn(-10);
  if (key == 'd')
    bob.turn(10);

  if (key == ' ')
    bob.Hyperspace();

  if (key == 'w')
    bob.accelerate(.3);
  if (key == 'e')
    bob.accelerate(-.3);

  if (key == 'r')
    bob.setYspeed(1);
  if (key == 'q')
    bob.setYspeed(-1);
}
