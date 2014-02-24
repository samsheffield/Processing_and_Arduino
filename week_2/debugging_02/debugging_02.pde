// 02. Debugging

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);
	ellipse(mouseX, mouseY, 50, 50);

	// println will print the result of the argument between parentheses in the black output window. When finished it will create a new line.
	// " " are used to add your own messages.
	// Messages can be concatenated using +
	println("x: " + mouseX);
}