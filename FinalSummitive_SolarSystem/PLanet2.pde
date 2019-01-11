class Planet2
{
  float size;
  float deg;
  PShape globe;
  PImage venus;
    float degY;
  //
  //PImage cursor;
  Planet2()
  {
    size = 40;
   // cursor = loadImage("Mouse.png");
     noStroke();
    textureMode(NORMAL);
    venus = loadImage("venus.jpg");
    textureWrap(REPEAT);
    globe = createShape(SPHERE, size*0.95);
    globe.setTexture(venus);
  }

  void draw()
  {
 
  }
  void move()
  {
    //pushMatrix();
    //translate(1200, 400, -300);
    //rotateY(deg);
    //shape(globe);
    //popMatrix();
    //deg+=PI/250;
    //
     pushMatrix();
    translate(400, 400, -300);
    rotateY(degY);
    pushMatrix();
    translate(800, 0, 0);
    rotateY(deg);
    shape(globe);
    popMatrix();  
    popMatrix();
    degY+=PI/450;
    deg+=PI/250;
    //cursor.resize(50, 50);
    //image(cursor, mouseX -20, mouseY - 20);
  }
}
