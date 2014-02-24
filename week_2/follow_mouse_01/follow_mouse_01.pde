// 01. Follow mouse

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);

	// mouseX and mouseY are called variables.  Variables store specific data (in this case, the x and y position of the mouse.)
	ellipse(mouseX, mouseY, 50, 50);
}