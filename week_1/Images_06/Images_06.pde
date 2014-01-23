// 07. Images
// Sam Sheffield (hello@samsheffield.com)
// Working with images.
// Image source: http://goo.gl/4419rM

// PImage is an Object which is used to display an image. Give it a unique name to be able to use it throughout the sketch. 
// This is done at the top of the sketch to make it available to use in both setup() and draw(). 
// Please see reference for details on acceptable file types.
PImage image1; 

void setup(){ 
	size(600, 600);

	// Preload your images into the PImage object. The argument is the name of your image file, which needs to be inside of a folder called data nested in your sketch's folder
	image1 = loadImage("hotdog.png");
}

void draw(){
	background(#ff00ff);
	// The image() function is used to actually draw the image in the window. The arguments are: (image Object name, x, y).
	// Images are positioned from their top left corner.
	image(image1, 0, 0);

	// Optional width and height arguments can also be added to resize images. This is in pixel dimensions.
	image(image1, 0, 0, 200, 200);

	// Images can be rotated just like rectangles. Use imageMode() to change point of origin.
	imageMode(CENTER);
	pushMatrix();
	translate(500, 500);
	rotate(radians(180));
	image(image1, 0, 0, 200, 200);
	popMatrix();
	imageMode(CORNER);

	// Other fun things...

	// The tint() function can tint an image a specified color. noTint() is used to turn off the effect.
	tint(#FF0000);
	image(image1, 0, 200, 200, 200);
	noTint();

	// The tint() function can tint an image a specified color. An extra argument specifies the alpha of the tinted image (range: 0-255).
	tint(#0000FF, 128);
	image(image1, 200, 200, 200, 200);
	noTint();

	// If the color is set to white, the alpha value allows you to change image opacity without any noticeable tinting
	tint(255, 128);
	image(image1, 400, 200, 200, 200);
	noTint();
}