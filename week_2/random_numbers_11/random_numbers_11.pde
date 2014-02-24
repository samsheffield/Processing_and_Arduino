// 11. Random numbers

float yPosition1 = 300;
float xPosition1 = 200;

float yPosition2 = 300;
float xPosition2 = 400;

float diameter = 50;

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);

	// The random() function results in a random float between 0 and the number supplied as an argument.
	xPosition2 = random(width);
	yPosition2 = random(height);
	ellipse(xPosition2, yPosition2, diameter, diameter);

	// This function can also be given two arguments which supply a minimum, maximum range for the result.
	// Random movement can be created when combined with += -= etc.
	xPosition1 += random(-1, 1);
	yPosition1 -= random(-1, 1);
	ellipse(xPosition1, yPosition1, diameter, diameter);

	println(xPosition2);
}