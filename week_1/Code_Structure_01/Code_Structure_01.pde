// 01. Code Structure 
// Sam Sheffield (hello@samsheffield.com)
// How does it all go together?

// This is a single line comment! Anything after // on the same line is ignored when the code is run.

/* 
   Multi-line comments
   Ignore anything between
   These funny symbols
*/

// The area at the top of your sketch is used to set up things which will be used throughout your entire sketch.

// The section below holds a block of code between { } which is only run once when the sketch begins.
void setup(){
	// This area holds things that you want to initialize or that only need to be run once.

	// This is a function, which is just a fancy word for command. 
	size(600, 400); // This function has two parameters, are set inside of parentheses and separated by a comma. Any line giving a command should end with a ;

	// All commands are run in order, like a script. So this command is run AFTER the previous one.
	background(0);

}

// The section below holds any code which you want run as long as the program is still running. It runs after setup().
void draw(){
	// Code inside of draw() is also run in order. So this...
	fill(128);

	// is run before this...
	ellipse(300, 200, 50, 50);

	// However, unlike setup(), when this get to the end, draw() starts over again.
}

// This area is useful when you want to define our own functions for use in this sketch.