int yWaarde = 175;
int xWaarde = 175;

size(500,500);
background(255,255,255);

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
if((i+j) % 2 == 0){
     fill(00,0,0);
}else{
      fill(255,255,255);
     }
     

  rect(xWaarde,yWaarde,20,20);
  yWaarde += 20;
}
    yWaarde = 175;
   xWaarde += 20;
}
