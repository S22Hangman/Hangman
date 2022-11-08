int tal;
String[] ordbog;
String wrong = "";
ArrayList<PVector> positions = new ArrayList<PVector>();
ArrayList<PVector> availablepos = new ArrayList<PVector>();

void setup() {

  fullScreen();
  textAlign(CENTER);
  textSize(50);

  ordbog = loadStrings("Ordbog.txt");
  tal = int(random(ordbog.length));
  
  for (int i = 0; i < 540; i += 50) {
    for (int j = 0; j < 300; j += 50) {
      PVector newpos = new PVector(i + width/1.5 + 50, j + 150);
      availablepos.add(newpos);
    }
  }
}

void draw() {
  background (128);
  galge();
  bakke();
  man(wrong.length());
  stroke(0);
  guesses(ordbog[tal].length());
  wrongGuesses(wrong, positions);

  text(ordbog[tal].toUpperCase(), width/2, height/3);
}

void keyPressed() {
  if (key == CODED || key == ' ') {
    return;
  }
  
  String skey = (key + "").toLowerCase();
  
  if (ordbog[tal].indexOf(skey) > -1) {
    
  } else {
    if (wrong.indexOf(skey) == -1) {
      wrong += skey;
      int rand = int(random(availablepos.size()));
      PVector newPos = availablepos.get(rand);
      availablepos.remove(rand);
      positions.add(newPos);
    }
  }
}
