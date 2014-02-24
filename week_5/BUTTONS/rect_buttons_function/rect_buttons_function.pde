// Rectangular buttons using a function
// Will not work with rectMode(CENTER)

float button1X = 100;
float button1Y = 200;
float button1W = 100;
float button1H = 200;

float button2X = 300;
float button2Y = 100;
float button2W = 50;
float button2H = 50;

void setup() {
	size(600, 600);
}

void draw() {
	background(0);

	// Rect button 1
	if(checkRectButton(button1X, button1Y, button1W, button1H) == true){
		fill(#00FF00);
	}
	else{
		fill(#FF0000);
	}
	rect(button1X, button1Y, button1W, button1H);

	// Rect button 2
	if(checkRectButton(button2X, button2Y, button2W, button2H) == true){
		fill(#00FF00);
	}
	else{
		fill(#FF0000);
	}
	rect(button2X, button2Y, button2W, button2H);
}

// Returns either true or false when a mouse rolls over a rect
boolean checkRectButton(float buttonX, float buttonY, float buttonW, float buttonH){
	if ( (mouseX > buttonX && mouseX < buttonX + buttonW) && (mouseY > buttonY && mouseY < buttonY + buttonH) ){
		return true;
	}
	else{
		return false;
	}
}