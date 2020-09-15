class Knap {
  int knapX, knapY, knapB, knapH, knapFarve;
  String txt;
  boolean mouseHover;
  boolean buttonPressed;



  Knap(String txt_, int x_, int y_, int b_, int h_, color knapFarve_) {
    knapX = x_;
    knapY = y_;
    knapB = b_;
    knapH = h_;
    knapFarve = knapFarve_;
    txt = txt_;
  }

  // Farve til knapHover
  boolean hover;
  int knapHoverFarve = color(#00FFFF);
  // color inverter lånt af :https://forum.processing.org/one/user/davbol.html
  float R = red(knapFarve);
  float G = green(knapFarve);
  float B = blue(knapFarve);
  float minRGB = min(R, min(G, B));
  float maxRGB = max(R, max(G, B));
  float minPlusMax = minRGB + maxRGB;
  color complement = color(minPlusMax-R, minPlusMax-G, minPlusMax-B);

///  void tegn() {
///    if (buttonPressed)
///      fill(knapFarve);
///    else
///      fill(knapHoverFarve);
 ///   if (isON(mouseX, mouseY)) {
 ///     stroke(0);
 ///     strokeWeight(2);
 ///   } else { 
 ///     noStroke();
  ///  }
///
 ///   rect(knapX, knapY, knapB, knapH, 10);
  ///  fill(complement);
 ///   textSize(30);
 ///   text(txt, knapX+textWidth(txt), knapY+(knapH/2));
///  }


///  boolean isON(int x, int y) {
 ///   return x > knapX && x < (knapX+knapB) && y > knapY && y < (y+knapH);
 ///   boolean knapKlikket() {
 ///     boolean changeState = isON(mouseX, mouseY);
 ///     if (changeState) {
 ///
 ///buttonPressed = !buttonPressed;
  ///    }
   ///   return changeState;
  ///  }
  }

  //     knapFarve = (color(red(knapFarve), green(knapFarve), blue(knapFarve), 0.1));
