class Planet3
{
  float size;
  float deg;
  PShape globe;
  PImage earth;
    float degY;
  //
  //PImage cursor;
  Planet3()
  {
    size = 40;
    //cursor = loadImage("Mouse.png");
     noStroke();
    textureMode(NORMAL);
    earth = loadImage("earth.jpg");
    textureWrap(REPEAT);
    globe = createShape(SPHERE, size);
    globe.setTexture(earth);
  }

  void draw()
  {
 
  }
  void move()
  {
    //pushMatrix();
    //translate(1350, 400, -300);
    //rotateY(deg);
    //shape(globe);
    //popMatrix();
    //deg+=PI/250;
    //
     pushMatrix();
    translate(400, 400, -300);
    rotateY(degY);
    pushMatrix();
    translate(950, 0, 0);
    rotateY(deg);
    shape(globe);
    popMatrix();  
    popMatrix();
    degY+=PI/550;
    deg+=PI/250;
    //cursor.resize(50, 50);
    //image(cursor, mouseX -20, mouseY - 20);
  }
}
