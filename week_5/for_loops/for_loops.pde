// For loops are used to do something many times.

void setup(){
	size (600, 600);
	frameRate(1);
}

void draw(){
	background(0);

	// Start the counter (i) at 0 and keep adding 1 while it is under 10
	// While that is true, do what is between {}
	for (int i = 0; i < 10; i++) {
		fill(random(50, 255));
		ellipse(random(width), random(height), 20, 20);
	}
	// After the condition is met, keep going through sketch...

}
