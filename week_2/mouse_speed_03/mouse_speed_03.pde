// 03. Getting mouse speed

float xSpeed;
float ySpeed;

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);

	// The result of the function abs() is always positive. For example, -2 and 2 are both 2 as a result of abs()
	// The result is stored in the variable to the left of =
	// EXPLAIN HOW THIS DISTANCE INDICATES SPEED
	xSpeed = abs(mouseX - pmouseX); 
	ySpeed = abs(mouseY - pmouseY);

	ellipse(mouseX, mouseY, 50 + xSpeed, 50 + ySpeed);

	print("x speed: " + xSpeed + "\t");
	println("y speed: " + ySpeed );
}