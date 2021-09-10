int yWaarde = 175;
int xWaarde = 175;

size(500,500);
background(255,255,255);

for(int i = 0; i < 5; i++){
  rect(xWaarde,yWaarde,15,15);
  yWaarde += 15;
  xWaarde += 15;
}
