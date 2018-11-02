Spaceship bob;
Star[] nightSky = new Star[200];
public void setup() 
{
  size(900,900);
  background(0);
  bob = new Spaceship();
  for(int i = 0; i<nightSky.length; i++){
  	nightSky[i] = new Star();
  }
}
public void draw() 
{
	background(0);
	bob.show();
	bob.move();
	for(int i = 0; i < nightSky.length; i++){
		nightSky[i].show();
	}
}

public void keyPressed(){
	if(key == ' '){
		bob.setX((int)(Math.random()*900) + 1);
		bob.setY((int)(Math.random()*900) + 1);
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setPointDirection((int)(Math.random()*360) + 1);
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

