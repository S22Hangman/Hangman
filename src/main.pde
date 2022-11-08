int tal;
String[] ordbog;
String wrong = "";


void setup() {
  
  fullScreen();
  textAlign(CENTER);
  textSize(50);
  
  ordbog = loadStrings("Ordbog.txt");
  tal = int(random(ordbog.length));
  
}

void draw() {
  background (69);
  galge();
  bakke();
  man(wrong.length());
  guesses(ordbog[tal].length());
  
  text(ordbog[tal], width/2, height/3);
  
  text(wrong,width/2, height/2);
}

void keyPressed(){
  if (key == CODED){
  return;
  }
  if (ordbog[tal].indexOf(key) > -1){
    
  } else {
  if (wrong.indexOf(key) == -1){
  wrong += key;
  }
  }
  
}
