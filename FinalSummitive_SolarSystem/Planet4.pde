class Planet4
{
  float size;
  float deg;
  PShape globe;
  PImage mars;
    float degY;
  //
 // PImage cursor;
  Planet4()
  {
    size = 40;
    //cursor = loadImage("Mouse.png");
     noStroke();
    textureMode(NORMAL);
    mars = loadImage("mars.jpg");
    textureWrap(REPEAT);
    globe = createShape(SPHERE, size*0.53);
    globe.setTexture(mars);
  }

  void draw()
  {
 
  }
  void move()
  {
    //pushMatrix();
    //translate(1500, 400, -300);
    //rotateY(deg);
    //shape(globe);
    //popMatrix();
    //deg+=PI/250;
    //
     pushMatrix();
    translate(400, 400, -300);
    rotateY(degY);
    pushMatrix();
    translate(1100, 0, 0);
    rotateY(deg);
    shape(globe);
    popMatrix();  
    popMatrix();
    degY+=PI/600;
    deg+=PI/250;
    //cursor.resize(50, 50);
    //image(cursor, mouseX -20, mouseY - 20);
  }
}
