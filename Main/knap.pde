class Knap {
  int knapX, knapY, knapB, knapH, knapFarve;
  String txt;
  boolean Pressed = false;
  boolean Clicked = false;



  Knap(String txt_, int x_, int y_, int b_, int h_, color knapFarve_) {
    knapX = x_;
    knapY = y_;
    knapB = b_;
    knapH = h_;
    knapFarve = knapFarve_;
    txt = txt_;
  }


  // Tjekker om knappen bliver trykket

  void update() {
    if (mousePressed == true && mouseButton == LEFT && Pressed == false) { 
      Pressed = true; 
      if (mouseX > knapX && mouseX < (knapX+knapB) && mouseY > knapY && mouseY < (knapY+knapH))
      {
        Clicked = true;
      }
    } else {
      Clicked = false; 
      Pressed = false;
    }
  }

  void tegn() {
    // farver knappen når mussen er over den.
    fill(3, 47, 54);
    fill(98, 147, 155);

    // Tegner knappen og teksten til knappen
    rectMode(CENTER);
    rect(knapX, knapY, knapB, knapH, 10);
    fill(0, 0, 0);
    textSize(30);
    textAlign(CENTER, CENTER);
    text(txt, knapX, knapY);
  }

  // Bruges til at tjekke om knappen er klikket.

  boolean isClicked() {
    return Clicked;
  }
}
