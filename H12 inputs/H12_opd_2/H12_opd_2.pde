int seconden;  
int gedrukt = 0;
boolean race = true;

void setup(){
  size(500,500);  
}

void draw(){
  background(255,255,255);
  
seconden = millis()/1000;
if(seconden >= 10){
  race = false;
}
  fill(255,0,0);
    text("spaties: " + gedrukt, 250,250);
}

void keyReleased(){
  if(key == 32 && race){
  println(gedrukt++);
}}
