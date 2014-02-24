// Keyboard event functions

void setup(){
	size (600, 600);
}

void draw(){

}

void keyPressed() {
  println("pressed " + key);
}

void keyTyped() {
  println("typed " + key);
}

void keyReleased() {
  println("released " + key);
}