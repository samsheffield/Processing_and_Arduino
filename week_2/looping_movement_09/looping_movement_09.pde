// 09. Loop from one side of screen to the other

float yPosition = 300;
float xPosition = 300;
float diameter = 50;

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);
	xPosition++;
	yPosition -= 2;
	ellipse(xPosition, yPosition, diameter, diameter);

	// There's a better way to do this, as we'll soon see...

	// If the position exceeds the window width (RIGHT) it is reset to 0 (LEFT)
	if(xPosition > width){
		xPosition = 0;
	}

	// If the position is less than 0 (LEFT) it is reset to window width (RIGHT)
	if(xPosition < 0){
		xPosition = width;
	}

	// Same is done on the y axis
	if(yPosition > height){
		yPosition = 0;
	}
	if(yPosition < 0){
		yPosition = height;
	}
}