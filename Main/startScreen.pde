int farve = color(255, 255, 150);
Knap startKnap = new Knap("Start", 960, 540, 200, 100, farve);


void startScreen() {

  background(4, 32, 55);
  println("startScreen er initieret");
  smooth();

  startKnap.tegn();
  startKnap.update();

  if (startKnap.isClicked()) {
    clear();
    displayScreen = 1;
  }

  println(startKnap.isClicked());
}
