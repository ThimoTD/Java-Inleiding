import processing.sound.*;
import controlP5.*;

ControlP5 cp;
SoundFile file;
SoundFile file2;

void setup(){
  size(500,500);
  cp = new ControlP5(this);
 file = new SoundFile(this,"applause_y.mp3");
 file2 = new SoundFile(this,"All Time Low - Monsters.mp3");
  cp.addButton("knop1");
cp.getController("knop1");
  cp.addButton("knop2");
cp.getController("knop2");
}

void draw(){

}

void knop1(){
   file.play();
}

void knop2(){
 file2.play();
}
