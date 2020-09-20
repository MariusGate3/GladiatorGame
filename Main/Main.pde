// Variabler //

int displayScreen = 0;
PImage img;
boolean [] keys = new boolean[128];
// Setup //

void setup() {
  size(1920, 1080);
  move();
  keys = new boolean[128];
  RoyalHeirGladiator.animationSetup();
}

void draw() {
  println(displayScreen);
  move();

  // Her viser sketchenen(); hvis DisplayScreen er 0, som det altid er når programmet startes //
  if (displayScreen == 0) {
    startScreen();
  } else if (displayScreen == 1) {
    chooseOrigin();
  }
}

void move() { 
  int changeX = 0;
  int changeY = 0;
  
  if (keys['a'])
    changeX--;
  if (keys['d'])
    changeX++;
    
    RoyalHeirGladiator.updatePosition(changeX, changeY);
}
void keyPressed() {
  keys[key] = true;
}

void keyReleased() {
  keys[key] = false;
}
