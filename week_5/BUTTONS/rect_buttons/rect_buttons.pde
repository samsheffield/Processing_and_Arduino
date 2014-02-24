// Rectangular buttons
// Will not work with rectMode(CENTER)

float button1X = 200;
float button1Y = 200;
float button1W = 200;
float button1H = 200;

boolean button1Pressed;

void setup() {
	size(600, 600);
}

void draw() {

	// The button1Pressed variable is true while over a rect and pressing left mouse button
	if(button1Pressed == true){
		background(255);
	}
	else{
		background(0);
	}

	// Check x position of the mouse. Must be between left and right side of rect
	if(mouseX > button1X && mouseX < button1X + button1W){

		// Check y position of the mouse. Must be between top and bottom side of rect
		if(mouseY > button1Y && mouseY < button1Y + button1H){
			
			// If mouse is pressed while over rect
			if(mousePressed == true){
				button1Pressed = true;
				fill(#00FF00);
			}
			else {
				button1Pressed = false;
				fill(#FFFF00);
			}
			// End mouse press
		}
		else{
			fill(#FF0000);
		}
		// End mouseY
	}
	else{
		fill(#FF0000);
		button1Pressed = false;
	}
	// End mouseX

	rect(button1X, button1Y, button1W, button1H);
}