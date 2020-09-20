class Gladiator {
  int x, y;
  PImage spriteSheet;
  String spriteSheetString;
  PImage [] standing;
  boolean inMotion;
  int currentDirection;
  final int LEFT = 0, RIGHT = 1;

  Gladiator(String spriteSheetString_, int x_, int y_) {
    spriteSheetString = spriteSheetString_;
    inMotion = false;
    currentDirection = 1;
    x = x_;
    y = y_;
  }

  void animationSetup() {
    standing = new PImage[3];
    spriteSheet = loadImage(spriteSheetString);
    for (int i = 0; i<3; i++) {
      standing[i] = spriteSheet.get(90, 0, 300, 815);
    }
  }




  void tegn() {
    image(standing[CurrentDirection], x, y);
  }




  void updatePosition(int changeX, int changeY) {
    inMotion = true;
    if (changeX == 0 && changeY == 0)
      inMotion = false; 
    else if (changeX == -1)
      currentDirection = LEFT;
    else if (changeX == 1)
      currentDirection = RIGHT;


    x = x + changeX;
    y = y + changeY;
  }
}
