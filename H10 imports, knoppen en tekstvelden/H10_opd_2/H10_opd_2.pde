import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(500,500);
  background(120,25,255);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1");
  
  knop1.setCaptionLabel("print jouw naam");
  
  tekstveld1 = cp
                .addTextfield("TextInput1")
                .setPosition(100,100)
                .setText("Hoi")
                .setCaptionLabel("type hier je naam")
                .setColorLabel(color(255,255,255));
}


void draw(){

}

void Knop1(){
  textSize(20);
  text("hoi mijn naam is " + tekstveld1.getText(),200,50);
}
