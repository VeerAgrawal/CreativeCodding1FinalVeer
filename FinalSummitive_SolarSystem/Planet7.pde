class Planet7
{
  float size;
  float deg;
  PShape globe;
  PImage uranus;
    float degY;
  //
  //PImage cursor;
  Planet7()
  {
    size = 40;
    //cursor = loadImage("Mouse.png");
     noStroke();
    textureMode(NORMAL);
    uranus = loadImage("uranus.jpg");
    textureWrap(REPEAT);
    globe = createShape(SPHERE, size*4);
    globe.setTexture(uranus);
  }

  void draw()
  {
 
  }
  void move()
  {
    //pushMatrix();
    //translate(3500, 400, -300);
    //rotateY(deg);
    //shape(globe);
    //popMatrix();
    //deg+=PI/250;
    //
     pushMatrix();
    translate(400, 400, -300);
    rotateY(degY);
    pushMatrix();
    translate(3100, 0, 0);
    rotateY(deg);
    shape(globe);
    popMatrix();  
    popMatrix();
    degY+=PI/900;
    deg+=PI/250;
    //cursor.resize(50, 50);
    //image(cursor, mouseX -20, mouseY - 20);
  }
}
