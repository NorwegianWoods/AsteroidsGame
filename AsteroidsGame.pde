Spaceship bob;
ArrayList <Asteroid> andromeda = new ArrayList <Asteroid>();
Star[] nightSky = new Star[200];
ArrayList <Bullet> mario = new ArrayList <Bullet>();
int numAsteroids = 100;
int count;
public void setup() 
{
  size(900,900);
  background(0);
  bob = new Spaceship();
  for(int i = 0; i < nightSky.length; i++){
  	nightSky[i] = new Star();
  }
  for(int i = 0; i < numAsteroids; i++){
  	andromeda.add(new Asteroid());
  }
}
public void draw() 
{
	background(0);
	bob.show();
	bob.move();
	for(int i = 0; i < mario.size(); i++){
			mario.get(i).show();
			mario.get(i).move();
			if(mario.get(i).myCenterX > 899 || mario.get(i).myCenterX < 1 || mario.get(i).myCenterY > 899 || mario.get(i).myCenterY < 1)
			{
				mario.remove(i);
			}
	}
	for(int i = 0; i < nightSky.length; i++){
		nightSky[i].show();
	}
	for(int i = 0; i < andromeda.size(); i++){
		andromeda.get(i).show();
		andromeda.get(i).move();
		float d = dist(bob.getX(), bob.getY(), andromeda.get(i).getX(), andromeda.get(i).getY());
		if(d < 20){
			andromeda.remove(i);
		}
	}
	for(int i = 0; i < mario.size(); i++)
	{
		for(int f = 0; f < andromeda.size(); f++)
		{
			float d2 = dist(mario.get(i).getX(), mario.get(i).getY(), andromeda.get(f).getX(), andromeda.get(f).getY());
			if(d2 < 20)
			{
				andromeda.remove(f);
				mario.remove(i);
				count = count + 1;
				break;
			}
		}
	}

}

public void keyPressed(){
	if(key == ' '){
		mario.add(new Bullet(bob));
	}
	if(key == 'x'){
		bob.setX((int)(Math.random()*900) + 1);
		bob.setY((int)(Math.random()*900) + 1);
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setPointDirection((int)(Math.random()*360) + 1);
		background(155);
	}
	if(key == 'w'){
		bob.accelerate(0.25);
	}
	if(key == 'a'){
		bob.turn(10);
	}
	if(key == 's'){
		bob.accelerate(-0.25);
	}
	if(key == 'd'){
		bob.turn(-10);
	}
	if(key == 'o'){
		bob.setDirectionY(0);
		bob.setDirectionX(0);
	}
}

