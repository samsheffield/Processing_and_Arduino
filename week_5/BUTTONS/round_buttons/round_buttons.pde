// Circular buttons
// Must be a circle, not an oval

float button1X = 300;
float button1Y = 300;
float button1Radius = 100;

// Used to keep track of whether a button is pressed
boolean button1Pressed;

void setup() {
	size(600, 600);
}

void draw() {

	// If the mouse is over the circular button and the left mouse button is pressed
	if(button1Pressed == true){
		background(255);
	}
	else{
		background(0);
	}
	
	// The dist() function is used to check the distance of the mouse from the center of the circle. 
	// If it is less than the radius then the mouse is over the circle
	if(dist(mouseX, mouseY, button1X, button1Y) < button1Radius){

		// If over the circle, check if the mouse is pressed
		if(mousePressed == true){
			fill(#00FF00);
			button1Pressed = true;
		}
		else{
			fill(#FF0000);
			button1Pressed = false;
		}
		// end mouse press
	}
	// If the mouse is not over the circle
	else{
		fill(#FFFF00);
		button1Pressed = false;
	}

	ellipse(button1X, button1Y, button1Radius*2, button1Radius*2);

}