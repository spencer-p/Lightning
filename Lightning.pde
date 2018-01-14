// Don't want to think about these
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

// Coordinate of wipe
float wipeX = 0;
// Wipe color is white?
boolean whiteWipe = false;

// Should the lightning be drawn?
boolean drawLightning = true;

// What color is the lightning?
boolean whiteLightning = true;

// Win condition
float winX = (300)*(9.0/10.0);
// Did the player win?
boolean won = false;

void setup()
{
	size(300,300);
	strokeWeight(2);
	background(0);
	frameRate(100);
}

void draw()
{
	if (!won)
	{
		draw_lightning();
		draw_wipe();
	}
	else
	{
		fill(whiteWipe ? 0 : 255);
		text("u win", 150, 150);
	}
}

void draw_lightning()
{
	if (drawLightning)
	{
		// Draw the lightning
		pushStyle();
		strokeWeight(3);
		stroke(whiteLightning ? 255 : 0);
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*20)-10;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
		popStyle();

		// Win if it passes the end
		if (endX >= winX)
		{
			won = true;
			drawLightning = false;
		}
		// The lightning ends if it hit the wipe
		else if (endX > wipeX)
		{
			drawLightning = false;
		}
	}
}

void draw_wipe()
{
	pushStyle();
	// Draw the wipe
	stroke(whiteWipe ? 255 : 0)
	line(wipeX,0,wipeX,300);

	// Move it along
	wipeX = wipeX + 2.5;

	// Wrap around and swap colors if necessary
	if (wipeX > 299)
	{
		wipeX = 0;
		whiteWipe = !(whiteWipe);
	}
	popStyle();
}

void mousePressed()
{
	startX = 0;
	startY = 150;
	drawLightning = true;
	whiteLightning = !whiteWipe;
	stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}
