// Storing data in and retrieving data from arrays with if().

float[] xPositions = new float[3];
color[] colors = {#FFFFFF, #FF00FF, #00FF00};

// Used to access array
int counter;

void setup(){
	size (600, 600);

	// To access a location in an array, you use its index number between []. The index number starts at 0, not 1
	xPositions[0] = 100;
	xPositions[1] = 300;
	xPositions[2] = 500;
}

void draw(){
	background(0);

	// to retrieve a value from the array, use a number between []
	fill(colors[counter]);
	ellipse(xPositions[counter], height/2, 200, 200);
}

void mousePressed(){
	// Create a loop which adds to counter when mouse is pressed
	// This number should be your array's length - 1
	if(counter < 2){
		counter++;
	}
	else{
		counter = 0;
	}
	println("Counter: " + counter);
}