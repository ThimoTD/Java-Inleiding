int yWaarde = 175;
int xWaarde = 50;

size(500,500);
background(255,255,255);

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
if((i+j) % 2 == 0){
     fill(255,0,0);
}else{
      fill(255,0,0);
     }
     

  rect(xWaarde,yWaarde,50,20);
  yWaarde += 20;
}
    yWaarde = 175;
   xWaarde += 40;
}
