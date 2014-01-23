// 06. Rotate
// Sam Sheffield (hello@samsheffield.com)
// How to rotate things in Processing

void setup(){ 
	size(400, 400);
}

void draw(){
	background(180); 

	// Isolate the thing you want to rotate by putting it between pushMatrix(); and popMatrix();. This isolation does not apply to appearance properties.
	pushMatrix();

	// use translate() to set x and y position. Arguments: (x, y)
	translate(100, 200); 

	// Set rotation. NOTE: this is in radians, not degrees.
	rotate(1);

	// To rotate from origin, set x and y arguments to 0. If you want to offset the shape from the rotation point (think: orbit), then set one of the values to the desired distance.
	rect(0, 0, 25, 50);

	popMatrix();

	// You can change the rotation point for rect using rectMode(). Other shapes (and images) have corresponding 'Mode functions. See reference for details.
	rectMode(CENTER); // CENTER must be all caps.

	pushMatrix();
	translate(200, 200); 
	rotate(1);
	rect(0, 0, 25, 50);
	popMatrix();

	//rectMode() will carry over (even if set inside of pushMatrix popMatrix), so we need to reset the rotation point to the top left.
	rectMode(CORNER); // CORNER must be all caps

	pushMatrix();
	translate(300, 200);
	// If you are more comfortable thinking of angles in degrees, you can use the radians() function to do the conversion for you. Only one argument: (degrees)
	rotate(radians(55)); // 55 degrees
	rect(0, 0, 25, 50);
	popMatrix();
}