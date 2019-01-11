import queasycam.*;

QueasyCam cam;
//classes
Homepage screen1;
Planet1 mercury;
Planet sun;
Planet2 venus;
Planet3 earth;
Planet4 mars;
Planet5 jupiter;
Planet6 saturn;
Planet7 uranus;
Planet8 neptune;
//Sound
import processing.sound.*;
SoundFile Homepagesong;
String path;
//sound2
import processing.sound.*;
SoundFile Maingame;
String path1;
//screen
int screen = 1;

void setup()
{
  //class
  screen1 = new Homepage();
  mercury = new Planet1();
  sun = new Planet();
  venus = new Planet2();
  earth = new Planet3();
  mars = new Planet4();
  jupiter = new Planet5();
  saturn = new Planet6();
  uranus = new Planet7();
  neptune = new Planet8();
  //size
  size (800, 800, P3D);
  //background song
  path = sketchPath("BackgroundSong.mp3");
  Homepagesong = new SoundFile(this, path);
  Homepagesong.play();
  //main game song
  path1 = sketchPath("Maingame.mp3");
  Maingame = new SoundFile(this, path1);
  Maingame.loop();
  Maingame.amp(0);  
  //Hide mouse
  //noCursor();
  //cam
   cam = new QueasyCam(this);
   cam.speed = 3;           
  cam.sensitivity = 0.5; 

}

void draw()
{
  //screen 1  
  if (screen == 1)
  {
    screen1.draw();
    screen1.move();
  }
  //screen 2
  if (screen == 2)
  {

    background(0);
    //stopping song
    Homepagesong.stop();
    //starting new song
    Maingame.amp(1);
   //drawing and moving planets
    mercury.draw();
    mercury.move();
    sun.draw();
    sun.move();
    venus.draw();
    venus.move();
    earth.draw();
    earth.move();
    mars.draw();
    mars.move();
    jupiter.draw();
    jupiter.move();
    saturn.draw();
    saturn.move();
    uranus.draw();
    uranus.move();
    neptune.draw();
    neptune.move();
  }
} 
