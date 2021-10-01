//int x = 225;
//int y = 225;
import controlP5.*;
boolean gameover = false;
float headX = 25, headY = 25;
float foodX;
float foodY;
int foodScore;
ArrayList<Item> items = new ArrayList<Item>();
int direction;
ControlP5 cp;
Button knopTryAgain;

class Item {
  int x;
  int y;
}

void setup(){
  size(500,500);
  foodX = floor(random(width/10));
 foodY = floor(random(height/10));
 cp = new ControlP5(this);
  knopTryAgain = cp.addButton("KnopTryAgain")
    .setPosition(200,220)
   .setSize(100,100)
    .setColorBackground(color(0,0,0))
    .setColorForeground(color(0,0,0))
    .setColorActive(color(0,0,0))
    .setColorLabel(color(255,255,255))
    .setCaptionLabel("try again")
    .hide();
}

void draw(){
  if(gameover) {
    frameRate(0);
    knopTryAgain.show();
  }
  
  
    frameRate(10);
    background(0,0,0);
    movement();
    border();
    fill(255,255,255);
    text("score:" + foodScore,50,50,50);
    textSize(30);
    
    /*for(int i = 0; i < items.size(); i++) {
      if (i = 0)
      items[foodScore].x ;
      items[foodScore].y ;
      rect(headX*10,headY*10,10,10);
      items[i]
    }*/

    //snake
    fill(0,255,0);
 rect(headX*10,headY*10,10,10);
fill(255,0,0);

rect(foodX * 10,foodY * 10,10,10);
//fill(0,255,0);

//randomizen van de snoepjes
if (headX == foodX && headY == foodY){
   foodX = floor(random(width/10));
 foodY = floor(random(height/10));
 foodScore++;
}

}

void KnopTryAgain(){
  
 foodX = floor(random(width/10));
 foodY = floor(random(height/10));
 foodScore = 0;
 headX = 25;
 headY = 25;
 gameover = false;
 frameRate(10);
 direction = 0;
 knopTryAgain.hide();
 
}

//dit moet de rand van het veld worden en gameover false maken
void border(){
 if(headX == 49){
 gameover = true;
 }
if(headX == 0){
   gameover = true;
 }
 if(headY == 49){
 gameover = true;
 }
 if(headY == 0){
 gameover = true;
 }
}
 

//dit is hoe je de snake beweegt
void keyPressed(){
  if(!gameover)
  {
   if(keyCode == UP){
      direction = 0;
   }
   else if (keyCode == DOWN){
     direction = 1;
     
   }
   else if (keyCode == LEFT){
     direction = 2;
     
   }
   else if (keyCode == RIGHT){
      direction = 3;
   }
  }
 }
 
 void movement(){
    if(direction == 0){
      headY--;
   }
   else if (direction == 1){
     headY++;
     
   }
   else if (direction == 2){
     headX--;
     
   }
   else if (direction == 3){
     headX++;
   }
 }
