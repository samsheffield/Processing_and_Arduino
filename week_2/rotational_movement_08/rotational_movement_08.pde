// 08. Rotational movement (spinning)

float shapeSize = 50;

float rotationSpeed1 = .125;
float angle1 = 0;

float rotationSpeed2 = .0025;
float angle2 = 0;

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);

	// Rotate around center
	pushMatrix();
	translate(300, 300);
	rotate(angle1);
	ellipse(0, 0, shapeSize, shapeSize*2);
	popMatrix();

	// Orbit
	rectMode(CENTER);
	pushMatrix();
	translate(300, 300);
	rotate(angle2);
	rect(75, 0, shapeSize, shapeSize);
	popMatrix();
	rectMode(CORNER);

	// Create motion
	angle1 += rotationSpeed1;
	angle2 += rotationSpeed2;
}