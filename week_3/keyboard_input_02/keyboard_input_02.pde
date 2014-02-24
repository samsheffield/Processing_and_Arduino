// Keyboard input

void setup(){
	size (600, 600);
}

void draw(){
	// Check if any key has been pressed
	if(keyPressed == true){
		background(#FF0000);

		// Check for specific key
		if (key == 'a'){
			fill(0);
		}
		else{
			fill(255);
		}

	}
	else{
		background(#00FF00);
	}

	ellipse(300, 300, 600, 600);
}