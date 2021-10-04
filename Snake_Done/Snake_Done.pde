import controlP5.*;
boolean gameover = false;
int headX = 25, headY = 25;
int foodX;
int foodY;
int foodScore;
int direction;
ArrayList<Integer> TailX = new ArrayList<Integer>();
ArrayList<Integer> TailY = new ArrayList<Integer>();

ControlP5 cp;
Button knopTryAgain;

void setup() {
  frameRate(8);
  size(500, 500);
  foodX = floor(random(width/10));
  foodY = floor(random(height/10));
  cp = new ControlP5(this);
  knopTryAgain = cp.addButton("KnopTryAgain")
    .setPosition(200, 220)
    .setSize(100, 100)
    .setColorBackground(color(0, 0, 0))
    .setColorForeground(color(0, 0, 0))
    .setColorActive(color(0, 0, 0))
    .setColorLabel(color(255, 255, 255))
    .setCaptionLabel("try again")
    .hide();
}

void draw() {
  if (gameover) {
    frameRate(0);
    knopTryAgain.show();
  }

  tail();
  frameRate(8);
  background(0, 0, 0);
  movement();
  border();
  collision();
  fill(255, 255, 255);
  text("score:" + foodScore, 50, 50, 50);
  textSize(30);
  for (int i = 0; i < TailX.size(); i++) {
    fill(0, 255, 0);
    rect(TailX.get(i)*10, TailY.get(i)*10, 10, 10);
  }

  //snake
  fill(0, 255, 0);
  rect(headX*10, headY*10, 10, 10);
  fill(255, 0, 0);

  rect(foodX * 10, foodY * 10, 10, 10);
  //fill(0,255,0);

  //randomizen van de snoepjes
  if (headX == foodX && headY == foodY) {
    foodX = floor(random(width/10));
    foodY = floor(random(height/10));
    TailX.add(51);
    TailY.add(51);
    foodScore++;
  }
}

void KnopTryAgain() {
  foodX = floor(random(width/10));
  foodY = floor(random(height/10));
  foodScore = 0;
  headX = 25;
  headY = 25;
  gameover = false;
  frameRate(10);
  direction = 0;
  knopTryAgain.hide();
  TailX.clear();
  TailY.clear();
}

//dit moet de rand van het veld worden en gameover false maken
void border() {
  if (headX == 50) {
    gameover = true;
  }
  if (headX < 0) {
    gameover = true;
  }
  if (headY == 50) {
    gameover = true;
  }
  if (headY < 0) {
    gameover = true;
  }
}

void tail() {
  if (TailX.size() > 0) {
    int[] CopyTailX = new int [TailX.size()];
    int[] CopyTailY = new int [TailY.size()];


    for (int i = 0; i < CopyTailX.length; i++) {
      CopyTailX[i] = TailX.get(i);
      CopyTailY[i] = TailY.get(i);
    }

    TailX.set(0, headX);
    TailY.set(0, headY);

    for (int i = 1; i < TailX.size(); i++) {
      TailX.set(i, CopyTailX[i-1]);
      TailY.set(i, CopyTailY[i-1]);
    }
  }
}

void collision() {
  for (int i = 0; i < TailX.size(); i++) {
    if (TailX.get(i) == headX)
      if (TailY.get(i) == headY) {
        gameover = true; 
        break;
      }
  }
}


//dit is hoe je de snake beweegt
void keyPressed() {
  if (!gameover)
  {
    if (keyCode == UP) {
      direction = 0;
    } else if (keyCode == DOWN) {
      direction = 1;
    } else if (keyCode == LEFT) {
      direction = 2;
    } else if (keyCode == RIGHT) {
      direction = 3;
    }
  }
}

final int DIRECTION_RIGHT = 0;

void movement() {
  if (direction == 0) {
    headY--;
  } else if (direction == 1) {
    headY++;
  } else if (direction == 2) {
    headX--;
  } else if (direction == 3) {
    headX++;
  }
}
