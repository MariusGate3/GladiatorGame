
Origin RoyalHeir = new Origin("Royal Heir", 420, 540);
Origin LoneDruid = new Origin("Lone Druid", 960, 540);
Origin StreetGuy = new Origin("Street Guy", 1500, 540);
Gladiator RoyalHeirGladiator = new Gladiator("RoyalHeirSpriteSheet.png", 420, 540);

void chooseOrigin() {
  background(39, 85, 108);

  // Funktioner for objekterne
  RoyalHeir.tegn();
  RoyalHeir.update();
  LoneDruid.tegn();
  LoneDruid.update();
  StreetGuy.tegn();
  StreetGuy.update();
  RoyalHeirGladiator.tegn();

}
