import processing.sound.*;

SoundFile file;

void setup(){
 file = new SoundFile(this,"sample.mp3");
 file.play();

}
