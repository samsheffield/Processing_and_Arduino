// Examples of custom functions

boolean timerTriggered;
float xPosition, yPosition;

void setup() {
	size(600, 600);
	frameRate(30);
	noStroke();
}

void draw() {
	background(0);

	// Example 1
	randomBox();
	randomBox();
	randomBox();

	// Example 2
	timer(6);
	fill(#00FFFF);
	ellipse(xPosition, yPosition, 100, 100);

	// Example 3
	if (checkMouseX() == true){
		fill(#FF00FF, 90);
		ellipse(mouseX, mouseY, 25, 25);
	}
	else {
		fill(#FF00FF, 255);
		ellipse(mouseX, mouseY, 50, 50);
	}

}

// Example 1: Use a function to do something, possibly multiple times.
void randomBox(){
	fill(random(255), random(255), random(255), random(255));
	rect(random(width), random(height), 50, 50);
}

// Example 2: Give a function an argument
void timer(int _seconds){
	if(frameCount % (_seconds * 30) == 0){
		timerTriggered = true;
	}
	else{
		timerTriggered = false;
	}

	if(timerTriggered == true){
		xPosition = random(width);
		yPosition = random(height);
	}
}

// Return a value from a function. void is replaced with the type of data being created.
// This kind of function MUST return some kind of value.
boolean checkMouseX(){
	if(mouseX > width/2){
		return true;
	}
	else {
		return false;
	}
}