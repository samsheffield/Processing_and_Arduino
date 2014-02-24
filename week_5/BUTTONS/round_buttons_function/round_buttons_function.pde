// Circular buttons using a function

// For round button 1
float button1X = 200;
float button1Y = 300;
float button1Radius = 100;

// For round button 2
float button2X = 400;
float button2Y = 200;
float button2Radius = 20;

void setup() {
	size(600, 600);
}

void draw() {
	background(0);
	
	// Circular button 1
	if (checkRoundButton(button1X, button1Y, button1Radius) == true){
		fill(#00FF00);
	}	
	else{
		fill(#FF0000);
	}
	ellipse(button1X, button1Y, button1Radius*2, button1Radius*2);

	// Circular button 2
	if (checkRoundButton(button2X, button2Y, button2Radius) == true){
		fill(#00FF00);
	}	
	else{
		fill(#FF0000);
	}
	ellipse(button2X, button2Y, button2Radius*2, button2Radius*2);

}

// // Returns either true or false when a mouse rolls over a circle
boolean checkRoundButton(float buttonX, float buttonY, float buttonRadius){
	if(dist(mouseX, mouseY, buttonX, buttonY) < buttonRadius && mousePressed == true){
		return true;
	}
	else{
		return false;
	}
}