int touchX = 300;
int touchY = 300;
void setup()
{
	size(600,600);
	background(222, 52, 40);
	noStroke();
	rect(0, 0, 100, 600);
	rect(200, 0, 100, 600);
	rect(400, 0, 100, 600);

}
void draw()
{
 	fill(0);
 	textSize(30);
	text("CLICK & DRAG TO MAKE FUNNEL CAKE", 17, 65);
	textSize(20);
	text("press any key to clean up", 177, 95);
}

void mouseDragged() 
{
	fill(230,194,112);
	stroke(217, 182, 102);
 	ellipse(touchX,touchY,150,150);
 	touch();
	redraw();
}

void touch()
{
	touchX = pmouseX;
	touchY = pmouseY;
}
void mouseReleased() 
{
	sprinkle();
}

void sprinkle() {
	int numOfSprinkles = 0;
	while(numOfSprinkles < 150) 
	{
		int sprinkleX = ((int)(random(0, 600)));
		int sprinkleY = ((int)(random(0, 600)));
		fill(255);
		ellipse(sprinkleX, sprinkleY, 6, 6);
		numOfSprinkles ++;

	}
}

void keyPressed()
{
	noStroke();
	fill(222, 52, 40);
	rect(0, 0, 600, 600);
	fill(255);
	rect(0, 0, 100, 600);
	rect(200, 0, 100, 600);
	rect(400, 0, 100, 600);
}