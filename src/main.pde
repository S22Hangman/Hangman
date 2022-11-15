int tal;
String[] ordbog;
String wrong = "";
ArrayList<PVector> positions = new ArrayList<PVector>();
ArrayList<PVector> availablepos = new ArrayList<PVector>();
int s = 0;
void setup() {

  fullScreen();
  textAlign(CENTER);
  textSize(50);

  ordbog = loadStrings("Ordbog.txt");
  tal = int(random(ordbog.length));
  s = ordbog[tal].length() *20;
  
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
  boolean failed = man(wrong.length());
  if (failed) {
    tal = int(random(ordbog.length));
    wrong = "";
  }
  stroke(0);
  guesses(ordbog[tal].length());
  wrongGuesses(wrong, positions);

  text(ordbog[tal].toUpperCase(), width/2, height/3);
  if(frameCount%60 == 0) {
  s--;
  }
  text(s,100,100);
  
  if(s == 0){
    tal = int(random(ordbog.length));
    s = ordbog[tal].length() *20;
    wrong = "";
  }
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
