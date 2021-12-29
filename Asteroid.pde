class Asteroid extends Floater {
  double rotSpeed;
  public Asteroid() {
    rotSpeed = (Math.random()*4-2);
    corners = 4;
    xCorners= new int[]{(int)(Math.random()*16-8), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*16)};
    yCorners= new int[]{-8, 0, 8, 0};
    myColor= #2FA708;
    myCenterX= (Math.random()*501);
    myCenterY= (Math.random()*501);     //holds center coordinates
    myXspeed= 0;
    myYspeed= 0;     //holds the speed of travel in the x and y directions
    myPointDirection= 0;         //holds current direction the ship is pointing in degrees
  }
  void move() {
    turn(rotSpeed);
    super.move();

   
  }
  double getX() {
    return myCenterX;
  }
    double getY() {
      return myCenterY;
    }
  }
