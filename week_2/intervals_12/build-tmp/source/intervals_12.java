import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class intervals_12 extends PApplet {

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

public void setup(){
	size (600, 600);
}

public void draw(){
	background(0xffFF0000);

	//
	if (frameCount % intervalFrame == 0){
		xPosition = random(width);
		yPosition = random(height);
	}

	fill(0xffFFFF00);
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

	fill(0xffFF00FF);
	ellipse(xPosition2, yPosition2, diameter, diameter);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "intervals_12" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
