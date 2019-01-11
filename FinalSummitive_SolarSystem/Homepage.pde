class Homepage
{  
  //constructor
  Homepage()
  {
  }

  //background image
  PImage background;
  //Button box variables
  int buttonX;
  int buttonY;
  int buttonH;
  int buttonW;
  PFont Homefont;
  //cursor
 // PImage cursor;
  void draw()
  {
    //cursor
    //cursor = loadImage("Mouse.png");
    //Button box
    buttonX = 200;
    buttonY = 500;
    buttonH = 100;
    buttonW = 400;
    //Background 
    background = loadImage("Background.jpg");
    //Loading font
    Homefont = createFont("Homefont.ttf", 30);
  }
  void move()
  {
    //background
    background.resize(800, 800);
    image (background, 0, 0);
    //button to start game
    fill(139, 69, 19);
    rect (buttonX, buttonY, buttonW, buttonH);
    //instructions text
    textFont(Homefont);
    textSize(50);
    fill(24, 145, 163);
    text("Welcome to The Galaxy Simulator", 50, 150);
    text("'WASD' and 'trackpad'to move and rotate", 50, 350);
    fill (0);
    text ("click to begin", 240, 570);
   
    //cursor 
  //cursor.resize(50, 50);
  //image(cursor, mouseX -20, mouseY - 20);
    //button
    if (mousePressed)
    {
      if (mouseX>buttonX && mouseX <buttonX+buttonW && mouseY>buttonY && mouseY <buttonY+buttonH)
      {
        screen = 2;
        print("yeghdsab");
      }
    }
  }
}
