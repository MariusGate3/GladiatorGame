class Origin {
  int kasseX, kasseY;
  String txt;
  boolean Clicked = false;
  boolean Pressed = false;
  int kasseB = 440;
  int kasseH = 800;
  // konstruktøren

  Origin(String txt_, int x_, int y_) {
    kasseX = x_;
    kasseY = y_;
    txt = txt_;
  }

  void update() {
    if (mousePressed == true && mouseButton == LEFT && Pressed == false) { 
      Pressed = true; 
      if (mouseX > kasseX && mouseX < (kasseX+kasseB) && mouseY > kasseY && mouseY < (kasseY+kasseH))
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
    // Tegner knappen og teksten til knappen
    strokeWeight(40);
    stroke(0);
    fill(17, 60, 81);
    rect(kasseX, kasseY, kasseB, kasseH);
    fill(71, 114, 134);
    textSize(30);
    text(txt, kasseX, kasseY+(kasseH/2)-5);
  }

  // Bruges til at tjekke om knappen er klikket.

  boolean isClicked() {
    return Clicked;
  }
}
