import controlP5.*;

ControlP5 cp;
  Button knop1;
  Button knop2;

void setup(){
  size(500,500);
  
    cp = new ControlP5(this);
  
cp.addButton("Knop1")
.setPosition(250,250)
.setSize(200,200)
.setCaptionLabel("Klik mij");

cp.getController("Knop1").setColorForeground(color(200,0,0));

cp.getController("Knop1").setColorActive(color(0,200,0));


cp.addButton("Knop2")
.setPosition(50,50)
.setSize(200,200)
.setCaptionLabel("Klik mij");

cp.getController("Knop2").setColorForeground(color(200,0,0));

cp.getController("Knop2").setColorActive(color(200,0,0));
}

void draw(){
  
}

void Knop1(){
  println("Goed gedaan");
}

void Knop2(){
println("helaas fout");
}
