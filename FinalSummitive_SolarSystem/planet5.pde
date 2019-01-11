class Planet5
{
  float size;
  float deg;
  PShape globe;
  PImage jupiter;
    float degY;
  //
//  PImage cursor;
  Planet5()
  {
    size = 40;
    //cursor = loadImage("Mouse.png");
     noStroke();
    textureMode(NORMAL);
    jupiter = loadImage("jupiter.jpg");
    textureWrap(REPEAT);
    globe = createShape(SPHERE, size*11.2);
    globe.setTexture(jupiter);
  }

  void draw()
  {
 
  }
  void move()
  {
    //pushMatrix();
    //translate(2000, 400, -300);
    //rotateY(deg);
    //shape(globe);
    //popMatrix();
    //deg+=PI/250;
    //
     pushMatrix();
    translate(400, 400, -300);
    rotateY(degY);
    pushMatrix();
    translate(1600, 0, 0);
    rotateY(deg);
    shape(globe);
    popMatrix();  
    popMatrix();
    degY+=PI/800;
    deg+=PI/250;
    //cursor.resize(50, 50);
    //image(cursor, mouseX -20, mouseY - 20);
  }
}
