int value = 0;
PImage Markus;
int tal;
String[] ordbog;
String wrong = "";
ArrayList<PVector> positions = new ArrayList<PVector>();
ArrayList<PVector> availablepos = new ArrayList<PVector>();
String right = "";

int s = 0;
int state = -1;
import processing.video.*;
Movie myMovie;

void setup() {
    myMovie = new Movie(this, "gay2.mov");
    myMovie.loop();
    myMovie.pause();
  
  Markus = loadImage("Markus2.0.JPG");

  fullScreen();
  textAlign(CENTER);
  textSize(50);

  ordbog = loadStrings("Ordbog.txt");
  tal = int(random(ordbog.length));
  s = ordbog[tal].length() * 10;

  for (int i = 0; i < 540; i += 50) {
    for (int j = 0; j < 300; j += 50) {
      PVector newpos = new PVector(i + width/1.5 + 50, j + 150);
      availablepos.add(newpos);
    }
  }
}

void draw() {
  background (128);
  if (state ==-1){
    MainMenu();
  } else if (state == 0) {
    galge();
    bakke();
    boolean failed = man(wrong.length());
    if (failed) {
      state = 1;
    }
    
    // Check for win
    
    
    stroke(0);
    boolean win = guesses(ordbog[tal], right);
    wrongGuesses(wrong, positions);
    
    if(win){
    state=2;
    myMovie.play();
    }

    if (frameCount%60 == 0) {
      s--;
    }
    text(s, 100, 100);

    if (s == 0) {
      state = 1;
    }
  } else if (state == 1) {
    MarkusBillede();
    text("Press enter to restart", width / 2, height / 10);
  }else if (state == 2){
    imageMode(CORNERS);
    image(myMovie, 0, 0);
  }
  
}

// denies the use of keycoded's William
void keyPressed() {
  if (state == 0) {
    if (key == CODED || key == ' ' || key == ENTER) {
      return;
    }

    String skey = (key + "").toLowerCase();

    if (ordbog[tal].indexOf(skey) > -1) {
      if (right.indexOf(skey) == -1) {
        right += skey;
      }
    } else {
      if (wrong.indexOf(skey) == -1) {
        wrong += skey;
        int rand = int(random(availablepos.size()));
        PVector newPos = availablepos.get(rand);
        availablepos.remove(rand);
        positions.add(newPos);
      }
    }
  } else if (state == 1 || state==2) {
    if (key == ENTER) {
      restart();
    }
  }
}

void restart(){
  myMovie.pause();
  right = "";
  wrong = "";
  tal = int(random(ordbog.length));
  s = ordbog[tal].length() * 10;
  
  positions = new ArrayList<PVector>();
  availablepos = new ArrayList<PVector>();
   for (int i = 0; i < 540; i += 50) {
    for (int j = 0; j < 300; j += 50) {
      PVector newpos = new PVector(i + width/1.5 + 50, j + 150);
      availablepos.add(newpos);
    }
  }
  
  state = 0;
}
