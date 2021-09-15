void setup(){
 size(500,500);
 background(255,255,255);
}

void  stam(int x, int y, int breedte, int lengte) {
    fill(139,69,19);
  rect(x,y,breedte,lengte);
}
void  stam2(int x, int y, int breedte, int lengte) {
   fill(139,69,19);
  rect(x,y,breedte,lengte);
}
void  stam3(int x, int y, int breedte, int lengte) {
   fill(139,69,19);
  rect(x,y,breedte,lengte);
}

void blad(int x1, int y1, int groot){
  fill(0,150,0);
  circle(x1,y1,groot);
}
void blad2(int x1, int y1, int groot){
  fill(0,150,0);
  circle(x1,y1,groot);
}
void blad3(int x1, int y1, int groot){
  fill(0,150,0);
  circle(x1,y1,groot);
}

void draw(){
stam(225,300,20,275);
stam2(150,300,20,275);
stam3(350,300,20,275);
blad(235,300,150);
blad2(160,300,150);
blad3(360,300,150);
  
}
