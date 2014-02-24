// Save frame
float angle;

void setup(){
	size (600, 600);
	background(#FF0000);
}

void draw(){
	
	pushMatrix();
	translate(300, 300);
	rotate(radians(angle));
	rect(20,0,50,50);
	popMatrix();

	angle++;

	if(keyPressed == true){
		if (key == 's'){

			// This is the default. Saves images in the sketch folder as a tiff
			//saveFrame();

			// If saveFrame() is supplied arguments, a specific location and file type can be set.
			saveFrame("images/line-######.png");
		}
	}

}