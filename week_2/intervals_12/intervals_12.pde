// 12. Working with intervals

float yPosition = 300;
float xPosition = 200;

float yPosition2 = 300;
float xPosition2 = 400;

float diameter = 50;

float intervalFrame = 180;

float startFrame = 60;
float onDuration = 30;
float offDuration = 180;

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);

	//
	if (frameCount % intervalFrame == 0){
		xPosition = random(width);
		yPosition = random(height);
	}

	fill(#FFFF00);
	ellipse(xPosition, yPosition, diameter, diameter);


	if(frameCount > startFrame){
		if(frameCount < startFrame + onDuration){
			xPosition2++;
			yPosition2++;
		}
		else {
			startFrame += offDuration;
		}
	}

	fill(#FF00FF);
	ellipse(xPosition2, yPosition2, diameter, diameter);
}