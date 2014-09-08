int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
float lineX = 0;
boolean whiteLightning = true;

void setup()
{
	size(300,300);
	strokeWeight(2);
	background(0);
	frameRate(100);

}
void draw()
{
	
	//while(startX < 300)
	{
		pushStyle();
		strokeWeight(3);
		if (whiteLightning == true)
		{
			stroke(255);
		}
		else {
			stroke(0);

		}
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*20)-10;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
		popStyle();
	}
	pushStyle();

	if (whiteLightning == true)
	{
		stroke(0);
	}
	else {
		stroke(255);
	}
	line(lineX,0,lineX,300);
	lineX = lineX + 2.5;
	popStyle();
	if (lineX > 299)
	{
		lineX = 0;
		whiteLightning = !(whiteLightning);
	}
}
void mousePressed()
{

	startX = 0;
	startY = 150;
	stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));

}
