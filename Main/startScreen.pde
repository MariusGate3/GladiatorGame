void startScreen() {
  Knap startKnap;
  int farve = color(255, 255, 150);
  startKnap = new Knap("Start", (width/2)-100, height/2, 200, 100, farve);

  background(255, 0, 0);
  println("startScreen er initieret");
  println(displayScreen);
  smooth();

  startKnap.tegn();

 
    if (startKnap.hover && mousePressed){ displayScreen = 1;
    }
    
}
