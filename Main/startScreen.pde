  int farve = color(255, 255, 150);
 Knap startKnap = new Knap("Start", 960, height/2, 200, 100, farve);


void startScreen() {

  background(255, 0, 0);
  println("startScreen er initieret");
  smooth();

  startKnap.tegn();
  startKnap.update();
  
  if(startKnap.isClicked()){
    clear();
  displayScreen = 1;
  }
  
  println(startKnap.isClicked());
}
