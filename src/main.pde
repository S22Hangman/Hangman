int tal;
String[] ordbog;

int num = 0;

void setup() {
  fullScreen();
  textAlign(CENTER);
  
  ordbog = loadStrings("Ordbog.txt");
  tal = int(random(ordbog.length));
  text(ordbog[tal], width/2, height/2);
}

void draw() {
  galge();
  bakke();
  man(num);
  num++;
  guesses(ordbog[tal].length());
}
