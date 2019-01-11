class Planet8
{
  float size;
  float deg;
  PShape globe;
  PImage neptune;
  float degY;
  //
  //PImage cursor;
  Planet8()
  {
    size = 40;
  //  cursor = loadImage("Mouse.png");
     noStroke();
    textureMode(NORMAL);
    neptune = loadImage("neptune.jpg");
    textureWrap(REPEAT);
    globe = createShape(SPHERE, size*3.88);
    globe.setTexture(neptune);
  }

  void draw()
  {
 
  }
  void move()
  {
    //pushMatrix();
    //translate(3900, 400, -300);
    //rotateY(deg);
    //shape(globe);
    //popMatrix();
    //deg+=PI/250;
    //
     pushMatrix();
    translate(400, 400, -300);
    rotateY(degY);
    pushMatrix();
    translate(3500, 0, 0);
    rotateY(deg);
    shape(globe);
    popMatrix();  
    popMatrix();
    degY+=PI/950;
    deg+=PI/250;
    //cursor.resize(50, 50);
    //image(cursor, mouseX -20, mouseY - 20);
  }
}
