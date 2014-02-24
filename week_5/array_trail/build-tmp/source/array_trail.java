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

public class array_trail extends PApplet {

int trailLength = 100;
float[] xPos = new float[trailLength];
float[] yPos = new float[trailLength];
float r;

public void setup() {
	size(600, 600);
	noStroke();
	fill(0xff00adad, 128);
}

public void draw() {
	background(0);
	xPos[0] = mouseX;
	yPos[0] = mouseY;

	// start from the end of the array -1 and subtract until 0
	for (int i = trailLength-1; i > 0; i--) {
		// This makes the trail get smaller
		float dia = trailLength-i;
		ellipse(xPos[i], yPos[i], dia, dia);

		// Set the current number in the array to the one before it.
		xPos[i] = xPos[i-1];
		yPos[i] = yPos[i-1];
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "array_trail" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
