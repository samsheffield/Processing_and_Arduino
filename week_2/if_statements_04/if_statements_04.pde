// 04. Conditional statements (if else)

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);

	// An if statement evaluates its argument as true or false. If true, the code between { } will run. 
	// Otherwise, it will be ignored.
	if(mouseX > 300){
		fill(0);
	}

	// An if statement can be paired with an else statement to provide code to fun if the evaluated argument is false.
	if(mouseY < 300){
		stroke(0);
	}
	else {
		stroke(255);
	}

	strokeWeight(5);
	ellipse(mouseX, mouseY, 50, 50);
}