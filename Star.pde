class Star {
	private int starX, starY;
	public Star(){
		starX = (int)(Math.random()*900);
		starY = (int)(Math.random()*900);
	}
	public void show(){
		fill(255);
		ellipse(starX, starY, 2, 2);
	}
}
