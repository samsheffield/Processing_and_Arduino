// Else if

float xPosition;

void setup(){
	size (600, 600);
}

void draw(){
	background(0);

	// These conditions are tested in order until one is true. 
	// At that point, the code between { } is run and all following else if, else statements are ignored until the next loop.
	if (xPosition < 150){
		fill(#FF0000);
	}
	else if (xPosition < 300){
		fill(#FFFF00);
	}
	else if (xPosition < 450){
		fill(#FFFFFF);
	}
	else {
		fill(#FF00FF);
	}

	ellipse(xPosition, 300, 150, 150);
	xPosition++;
}