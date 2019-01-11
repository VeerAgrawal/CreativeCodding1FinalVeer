class Planet1
{
  float size;
  float deg;
  float degY;
  PShape globe;
  PImage mercury;
  //
  PImage cursor;
  Planet1()
  {
    size = 40;
    cursor = loadImage("Mouse.png");
     noStroke();
    textureMode(NORMAL);
    mercury = loadImage("mercury.jpg");
    textureWrap(REPEAT);
    globe = createShape(SPHERE, size*0.38);
    globe.setTexture(mercury);
  }

  void draw()
  {
 
  }
  void move()
  {
    //pushMatrix();
    //translate(1100, 400, -300);
    //rotateY(deg);
    //shape(globe);
    //popMatrix();
    //deg+=PI/250;
    
    //
    pushMatrix();
    translate(400, 400, -300);
    rotateY(degY);
    pushMatrix();
    translate(700, 0, 0);
    rotateY(deg);
    shape(globe);
    popMatrix();  
    popMatrix();
    degY+=PI/400;
    deg+=PI/250;
  //cursor.resize(50, 50);
  //image(cursor, mouseX -20, mouseY - 20);
  }
}
