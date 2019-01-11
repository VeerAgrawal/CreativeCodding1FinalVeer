class Planet
{
  PShape globe;
  PImage sun;
  //
  //PImage cursor;
  int size;
  Planet()
  {
    size = 40;

    //cursor = loadImage("Mouse.png");
     noStroke();
    textureMode(NORMAL);
    sun = loadImage("sun.jpg");
    textureWrap(REPEAT);
    globe = createShape(SPHERE, size*15);
    globe.setTexture(sun);
  }

  void draw()
  {
 
  }
  void move()
  {
    pushMatrix();
    translate(400, 400, -300);
    rotateY(0);
    shape(globe);
    popMatrix();
    //
    //cursor.resize(50, 50);
    //image(cursor, mouseX -20, mouseY - 20);
  }
}
