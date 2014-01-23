// 03. Attributes
// Sam Sheffield (hello@samsheffield.com)
// Changing the appearance of drawn shapes

void setup(){ 
	size(500, 400);
}

void draw(){
	background(180);

	// IMPORTANT: Remember, this code is run in order. To change the appearance of a shape, you need to set the property BEFORE the shape function is used.

	// Stroke refers to the outline. By default, it is black.
	stroke(210); // 210 refers to the color on a grayscale (black:0 -> white:255)

	// The strokeWeight changes the thickness of the stroke. There are additional ways to change stroke in the reference.
	strokeWeight(10); // Stroke is now 10px thick
	point(50, 200);

	// The appearance of shapes will stay the same until we explicitly change them to something else.
	line(100, 175, 125, 225);

	// noStroke() is used to draw shapes without an outline
	noStroke();
	ellipse(175, 200, 25, 50);

	// Change everything after this point back to default stroke weight (1px). Also change color.
	stroke(0);
	strokeWeight(1);
	rect(225, 175, 25, 50);

	// Fill refers to the main color.
	fill(100);
	triangle(275, 225, 287.5, 175, 300, 225);

	// Fill changes also carry over.
	// noSmooth() is used to turn off smoothing. Shapes are smoothed by default.
	noSmooth();
	quad(325, 200, 337.5, 175, 350, 200, 337.5, 225);

	// noFill() allows you to draw hollow objects
	noFill();
	arc(375, 175, 50, 100, 0, HALF_PI);

	// Turn fill back on and set it to white. Turn smoothing back on.
	smooth();
	fill(255);
	arc(425, 175, 50, 100, 0, HALF_PI, PIE);

	// Warning: The appearance properties will carry over when the draw() loop begins again. So, in this case, the white fill and black stroke.

}