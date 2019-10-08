void setup()
{
	noLoop();
}
Die dice[] = new Die[9];
void draw()
{
	//your code here
	for(int i = 0; i < 3; i++) {
		for(int j = 0; j < 3; j++)
			dice[i] = new Die(i*30, j*30);
	}
	for(int i = 0; i < dice.length; i++) {
		//dice[i].show();
	}
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
		rect(myX, myY, 50, 50, 10);
	}
}
