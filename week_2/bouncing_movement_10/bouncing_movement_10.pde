// 10. Bouncing movement

float yPosition = 300;
float xPosition = 300;

float xDirection = 1;
float yDirection = -1;

float xSpeed = 1;
float ySpeed = 2;

float radius = 25;

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);
	ellipse(xPosition, yPosition, radius*2, radius*2);

	// There's a better way to do this, as we'll soon see...
	if(xPosition > width - radius){
		xDirection = -1;
	}
	if(xPosition < radius){
		xDirection = 1;
	}

	if(yPosition > height - radius){
		yDirection = -1;
	}
	if(yPosition < radius){
		yDirection = 1;
	}

	xPosition += xSpeed * xDirection;
	yPosition += ySpeed * yDirection;
}