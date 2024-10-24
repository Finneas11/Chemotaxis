class Walker {

int myX, myY, myColor;



Walker() {
 
myX = width + 500;

myY = height / 2;

myColor = color(0, 214, 150); }




Walker(int x, int y) {

myX = x;
myY = y;
myColor = color(0, 214, 150);

}



void walk() {
 
 myX += (int)(Math.random() * 6) - 3; myY += (int)(Math.random() * 2);  

if
(mouseX > myX) { myX += (int)(Math.random() * 5) - 1; }

else { myX += (int)(Math.random() * 5) - 3; }

if (mouseY > myY) { myY += (int)(Math.random() * 5) - 1; }

else { myY += (int)(Math.random() * 5) - 3; }

}



void show() {

fill(myColor);
rect(myX, myY, 10, 5);

}

}

Walker bob;

Walker[] army = {new Walker(), new Walker(), new Walker()};

Walker[] maine = {new Walker(), new Walker(), new Walker()};



void setup() {

size(500, 500);
background(40, 40, 40);
bob = new Walker();

}

void draw() {


bob.walk();
bob.show();

for (int i = 0; i < army.length; i++){
army[i].walk(); army[i].show(); }

for (int i = 0; i < maine.length; i++) {
maine[i].walk(); maine[i].show(); }

}
