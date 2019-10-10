void setup()
{
	noLoop();
	size(500, 550);
}
int total;
void draw()
{
	total = 0;
	background(100, 50, 0);
	//your code here
	for(int i = 0; i < 10; i++) {
		for(int j = 0; j < 10; j++){
			Die die = new Die(i * 50, j * 50);
			die.roll();
			total += die.value;
			die.show();
		}
	}
	textSize(20);
	text("Total value: " + Integer.toString(total), 150, 540);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, value;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		value = (int)(Math.random() * 6) + 1;
	}
	void roll()
	{
		//your code here
		value = (int)(Math.random() * 6) + 1;
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX, myY, 50, 50, 10);
		fill(0);
		switch (value) {
			case 1: 
				ellipse(myX + 25, myY + 25, 8, 8);
				break;
			case 2:
				ellipse(myX + 10, myY + 40, 8, 8);
				ellipse(myX + 40, myY + 10, 8, 8);
				break;
			case 3:
				ellipse(myX + 10, myY + 40, 8, 8);
				ellipse(myX + 40, myY + 10, 8, 8);
				ellipse(myX + 25, myY + 25, 8, 8);
				break;
			case 4:
				ellipse(myX + 10, myY + 40, 8, 8);
				ellipse(myX + 40, myY + 10, 8, 8);
				ellipse(myX + 10, myY + 10, 8, 8);
				ellipse(myX + 40, myY + 40, 8, 8);
				break;
			case 5:
				ellipse(myX + 10, myY + 40, 8, 8);
				ellipse(myX + 40, myY + 10, 8, 8);
				ellipse(myX + 10, myY + 10, 8, 8);
				ellipse(myX + 40, myY + 40, 8, 8);
				ellipse(myX + 25, myY + 25, 8, 8);
				break;
			case 6:
				ellipse(myX + 10, myY + 10, 8, 8);
				ellipse(myX + 40, myY + 10, 8, 8);
				ellipse(myX + 25, myY + 10, 8, 8);
				ellipse(myX + 10, myY + 40, 8, 8);
				ellipse(myX + 40, myY + 40, 8, 8);
				ellipse(myX + 25, myY + 40, 8, 8);
				break;
		}
	}
}
