// 06. Using variables
// Common data types

// Variables store a particular type of data. Variables are given unique names so that the may be reused.
// Creating variables at the top of the sketch make them available throughout it.

// boolean (true or false) False is default value
boolean started;

// int (whole number) 0 is the default value
int yPosition;

// Variable initialized with value. Variable values are set with =
int xPosition = 300;

// float (decimal numbers) 0.0 is the default value
float diameter = 600;

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);

	// mousePressed is a boolean variable which Processing sets based on mouse input.
	if(mousePressed == true){
		started = true;
	}

	if(started == true){
		// Variables can be used instead of numbers to make your code more readable.
		ellipse(xPosition, yPosition, diameter, diameter);
	}
}