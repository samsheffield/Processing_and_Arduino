// Mouse event functions

int fillColor = 0;
void setup(){
	size (600, 600);
}

void draw(){
	background(fillColor);
}

void mouseClicked(){
	fillColor = 255;
	println("Mouse clicked!");
}

void mouseReleased(){
	fillColor = 0;
	println("Mouse released!");
}

void mouseDragged(){
	fillColor = 127;
}

void mouseMoved(){
	fillColor = 64;
}

