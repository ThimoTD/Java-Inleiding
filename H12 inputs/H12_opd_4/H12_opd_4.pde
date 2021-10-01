int x = 0;
int y = 0;
boolean lock = false;

void setup(){
  size(500,500);
  background(0,0,0);
}

void draw(){
  println(mouseX + "x");
    println(mouseY + "y");
}

void mousePressed(){
  if (!lock) {
     x = mouseX;
     y = mouseY;
     lock = true;
  }
  else {
     stroke(255,0,0);
     line(mouseX,mouseY,x,y);
     x = mouseX;
     y = mouseY;
  }
}
