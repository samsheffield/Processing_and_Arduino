// String & char data types

// The char data type holds a single letter. Note the single quotes ' '
char triggerChar = 'a';

// A String holds text. Note the double quotes " "
String helloText = "Hello there!";

void setup(){
	size (600, 600);
	println(helloText);
}

void draw(){
	background(#FF0000);

	if(keyPressed == true){
		if (key == triggerChar){
			fill(0);
		}
		else{
			fill(255);
		}
	}

	ellipse(300, 300, 600, 600);
}