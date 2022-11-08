void setup() {
  fullScreen();
  textAlign(CENTER);
  
  String[] ordbog = loadStrings("Ordbog.txt");
  int tal = int(random(ordbog.length));
  text(ordbog[tal], width/2, height/2);
}

void draw() {
  galge();
  bakke();
}
