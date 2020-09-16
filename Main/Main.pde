// Variabler //

int displayScreen = 0;

// Setup //

void setup() {

  size(1920, 1080);
}

void draw() {
  println(displayScreen);

  // Her viser sketchen StartScreen(); hvis DisplayScreen er 0, som det altid er når programmet startes //
  if (displayScreen == 0) {
    startScreen();
  } else if (displayScreen == 1) {
    chooseOrigin();
  } else if (displayScreen == 2) {
    customizeGladiator();
  }
}


void customizeGladiator() {
}
