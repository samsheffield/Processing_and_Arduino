// 02. Drawing
// Sam Sheffield (hello@samsheffield.com)
// Introduction to Processing's various 2D shape primitive functions

void setup(){ 
	size(500, 400); // Size of window with the arguments: (width, height)
}

void draw(){
	// Add this to wipe the screen each loop of draw()
	background(180); // Fill the screen with light grey

	// Coordinates begin at top left corner. The horizontal axis is x and vertical axis is y. Coordinates are always pixels.

	// This function draws a single point and takes 2 arguments: (x, y)
	point(50, 200);

	// Line function draws a line between two sets of coordinates: (x1, y1, x2, y2)
	line(100, 175, 125, 225);

	// Ellipse function takes four arguments: (x, y, width, height). By default, it is positioned from its center point.
	ellipse(175, 200, 25, 50);

	// Rectangle function takes the same four arguments as ellipse(). By default, it is positioned from its top left corner.
	rect(225, 175, 25, 50);

	// Triangle triangle(x1, y1, x2, y2, x3, y3)
	triangle(275, 225, 287.5, 175, 300, 225);

	// This function draws a 4 sided polygon using 4 pairs of coordinates as arguments: (x1, y1, x2, y2, x3, y3, x4, y4)
	quad(325, 200, 337.5, 175, 350, 200, 337.5, 225);

	// Arc function creates a portion of an ellipse with these arguments: (x, y, width, height, start angle, stop angle). Angles are given in radians.
	arc(375, 175, 50, 100, 0, HALF_PI);

	// An extra argument changes the way the shape is drawn. See reference for options
	arc(425, 175, 50, 100, 0, HALF_PI, PIE);

}