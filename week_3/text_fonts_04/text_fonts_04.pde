// Text and fonts

// PFont objects hold embedded fonts
PFont newFont48;

void setup(){
	size (600, 600);

	// This font must be created using Tools > Create Font... and saved in a folder labeled data
	newFont48 = loadFont("newFont48.vlw");
}

void draw(){
	background(0);

	// Text color is set with fill()
	fill(#FFFF00);

	// The textFont() function is used to set font and text size
	textFont(newFont48, 48);

	// The textAlign() function sets the alignment (default: LEFT)
	textAlign(CENTER);

	// Use text() to draw text to the screen at a specified x and y location.
	text("Hello", 100, 300);


	fill(#FF0000);
	textFont(newFont48, 24);
	textAlign(LEFT);
	text("World!", 200, 300);
}