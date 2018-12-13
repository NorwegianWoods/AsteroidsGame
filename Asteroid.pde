class Asteroid extends Floater{
  private int rotSpeed;
  private int pos;
  public Asteroid(){
    myCenterX = (int)(Math.random()*900);
    myCenterY = (int)(Math.random()*900);
    rotSpeed = ((int)(Math.random() * 20) - 10);
    pos = 0;
    myDirectionX = (int)(Math.random()*10) - 5;
    myDirectionY = (int)(Math.random()*10) - 5;
    myPointDirection = 0;
    myColor = 123;
    corners = 6;      
    xCorners = new int [corners];
    yCorners = new int [corners];
    for(int theta = 0; theta<360; theta+= 360/corners){
      int r = ((int)(Math.random()*5)+5);
      int x = (int)(10*Math.sin(theta));
      int y = (int)(10*Math.cos(theta));
      xCorners[pos] = x;
      yCorners[pos] = y;
      pos++;
    }
  }
  public void move(){
    super.turn(rotSpeed);
    super.move();
  }

  public void setX(int x){myCenterX = x;} 
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}  
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;} 
}
