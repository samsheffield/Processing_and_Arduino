// 06. Moving in a straight line

float yPosition = 300;
float xPosition = 300;
float diameter = 50;

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);
	// ++ -- Are used to increment or decrement a number stored in a variable by 1 each time draw() loops
	xPosition++;

	// += -=  *= /= Are used when a number other than 1 is needed (though it also works with 1)
	yPosition -= 3;

	// Using these variables, which are being modified over time, create motion.
	ellipse(xPosition, yPosition, diameter, diameter);
}