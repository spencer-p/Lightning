// startX, startY, endX and endY. Initialize startX to 0, startY to 150, endX to 0 and endY to 150
// void setup() needs to set the strokeWeight() and background() of your applet
// void draw() needs to do two things:
// set stroke() color of the lightning bolt to some random() value
// a while loop that repeats the following until the endX is off the screen:
// set endX to startX plus a random integer from 0 to 9
// set endY to startY plus a random integer from -9 to 9
// draw a line() with endpoints startX,startY,endX,endY
// set startX to equal endX and startY to equal endY
// void mousePressed() needs to set startX,startY,endX,endY back to their original values.
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
	strokeWeight(2);
	background(0);
  size(300,300);
}
void draw()
{
	startX = 0;
 startY = 300;
endX = 0;
 endY = 300;
stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));

}

void mousePressed()
{
	while(endX < 300)
{
	endX = startX + (int)(Math.random()*300);
	endY = startY + (int)(Math.random()*300)-300;
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
}

}
