// Import .svg from Illustrator or Inkscape

// The PShape object holds imported .svg files
PShape s;

void setup() {
	size(1000, 1000);

	// loadShape imports an .svg stored in the data folder
	s = loadShape("smile.svg");
}

void draw() {
	background(#FF6600);
	// The shape() function works just like image(). 
	shape(s, 10, 10);

	// As with image(), extra arguments can be used to resize an image
	shape(s, 190, 190, 900, 900);
}