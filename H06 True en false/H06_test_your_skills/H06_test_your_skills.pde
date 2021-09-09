float gewicht = 100.5;
float lengte = 1.92;
float BMI = 0;
float leeftijd = 32;

BMI = gewicht / (lengte * lengte);  
BMI *= 10;
BMI = round(BMI);
BMI /= 10;

println(BMI);

size(700, 500);
background(255, 255, 255);

rect(150,200,100,30);
rect(300,100,100,30);
rect(450,200,100,30);

fill(0, 0, 0);
text("Gewicht: " + gewicht + "KG", 160, 220);
text("Lengte: " + lengte + "meter", 310, 120);
text("Leeftijd: " + leeftijd +"jaar", 460, 220);

textSize(30);
text("BMI: " + BMI, 290, 300);

if (leeftijd < 70){
  if(BMI < 18.5){
  fill(255,255,0);
} else if (BMI < 25) {
  fill(0,255,0);
} else if (BMI < 30) {
  fill(255,255,0);
}else{
  fill(255,0,0);
}
}else{
  if(BMI < 22){
    fill(255,255,0);
}else if(BMI < 28){
     fill(0,255,0);
     }else if(BMI <30){
       fill(255,255,0);
     }else{
       fill(255,0,0);
     }
}
