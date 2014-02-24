// Storing data in and retrieving data from arrays.

// An array is a container for many things of the same type.

// This is an empty array which can hold 2 floats
float[] xPositions = new float[3];

// This is a color array which is given default color values
color[] colors = {#FFFFFF, #FF00FF, #00FF00};

void setup(){
	size (600, 600);

	// To set a value in an array you use its index number in []. The index number starts at 0, not 1
	xPositions[0] = 100;
	xPositions[1] = 300;
	xPositions[2] = 500;
}

void draw(){
	background(0);
	
	// To retrieve a value from an array, use the index between[]
	fill(colors[1]);
	ellipse(xPositions[2], height/2, 100, 100);

	fill(colors[0]);
	ellipse(xPositions[1], height/2, 100, 100);
}
