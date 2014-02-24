// 05. Using mouse as input

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);

	// Boolean variables like mousePressed (a mouse is either pressed or not!) are tested using == with either true or false
	if(mousePressed == true){
		ellipse(mouseX, mouseY, 150, 150);
	}
	else {
		ellipse(mouseX, mouseY, 50, 50);
	}
}