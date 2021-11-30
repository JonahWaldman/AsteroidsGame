Spaceship bob = new Spaceship();
Star[] spaceSky = new Star[200];
public void setup() 
{
  size(500,500);
  for (int i = 0; i <spaceSky.length; i++)
    spaceSky[i] = new Star();
}
public void draw() 
{
 background(#2A0D6F);

 bob.show();
 bob.move();
  
  for (int i=0; i<spaceSky.length; i++){
 spaceSky[i].show();
}
}
public void keyPressed(){
  //turn
if(key == 'a')
bob.turn(-10);
if(key == 'd')
bob.turn(10);

if(key == ' ')
bob.Hyperspace();

if(key == 'w')
bob.accelerate(.5);
if(key == 'e')
bob.accelerate(-.5);

if(key == 'r')
bob.setYspeed(1);
if(key == 'q')
bob.setYspeed(-1);

}
