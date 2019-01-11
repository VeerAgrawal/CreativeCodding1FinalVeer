class Planet6
{
  float size;
  float deg;
  PShape globe;
  PImage saturn;
    float degY;
  //
  //PImage cursor;
  Planet6()
  {
    size = 40;
    //cursor = loadImage("Mouse.png");
     noStroke();
    textureMode(NORMAL);
    saturn = loadImage("saturn.jpg");
    textureWrap(REPEAT);
    globe = createShape(SPHERE, size*9.45);
    globe.setTexture(saturn);
  }

  void draw()
  {
 
  }
  void move()
  {
    //pushMatrix();
    //translate(2900, 400, -300);
    //rotateY(deg);
    //shape(globe);
    //popMatrix();
    //deg+=PI/250;
    //
     pushMatrix();
    translate(400, 400, -300);
    rotateY(degY);
    pushMatrix();
    translate(2500, 0, 0);
    rotateY(deg);
    shape(globe);
    popMatrix();  
    popMatrix();
    degY+=PI/850;
    deg+=PI/250;
    //cursor.resize(50, 50);
    //image(cursor, mouseX -20, mouseY - 20);
  }
}
