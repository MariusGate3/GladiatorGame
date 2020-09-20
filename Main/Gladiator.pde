class Gladiator {
  int x, y;
  PImage spriteSheet;
  String spriteSheetString;
  PImage temp;
  PImage [] standing;

  Gladiator(String spriteSheetString_, int x_, int y_) {
    spriteSheetString = spriteSheetString_;
    x = x_;
    y = y_;
  }


  void animationSetup() {
    standing = new PImage[3];
    spriteSheet = loadImage("RoyalHeirSpriteSheet.png");
    for(int i = 0; i<3; i++){
    standing[i] = spriteSheet.get(90,0,300,815);
    }
  }




  void tegn() {
    for (int i = 0; i < 3; i++){
    image(standing[i], x, y);
    }
  }

      
    void updatePosition(int changeX, int changeY) {
    x = x + changeX;
    y = y + changeY;
    }
}
