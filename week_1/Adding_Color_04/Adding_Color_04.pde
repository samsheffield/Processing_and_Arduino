// 04. Color
// Sam Sheffield (hello@samsheffield.com)
// Overview of the different ways color can be used

void setup(){ 
	size(500, 400);
}

void draw(){
	// Color can be set in one of three ways

	// Grayscale: A range from 0-255 (black to white)
	background(0);

	// RGB: Red, green, and blue values separated by commas
	noSmooth(); // Turn off smoothing for point to make it more visible
	stroke(255,255,0);
	point(50, 200);

	smooth(); // Set smoothing back on for everything else
	line(100, 175, 125, 225);

	// HEX: A hexadecimal value: #RRGGBB
	fill(#44AAFF);
	ellipse(175, 200, 25, 50);

	// Alpha (opacity) of all 3 modes can be adjusted (0-255) by adding an additional argument

	fill(100, 128); // 50% opacity
	rect(225, 175, 25, 50);

	fill(100, 64); // Same color, 25% opacity
	triangle(275, 225, 287.5, 175, 300, 225);

	fill(#FF7700, 100);
	quad(325, 200, 337.5, 175, 350, 200, 337.5, 225);

	noFill();
	stroke(255, 60); // Stroke set to white, with the alpha set to 60
	arc(375, 175, 50, 100, 0, HALF_PI);

	stroke(#00FF00, 128);
	fill(255, 64);
	arc(425, 175, 50, 100, 0, HALF_PI, PIE);

}