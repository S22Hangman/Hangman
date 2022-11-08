void guesses (int letters){
  int lineWidth = width / 50;
  int x = width / 2;
  int y = 600;

  for (int i=0; i < letters; i++) {
    strokeWeight(5);
    


    if (x > width-75) {
      x = width / 2;
      y += 100;
    }
    
    line (x, y , x + lineWidth, y);
    x += width / 25;
  }
}

void wrongGuesses (String wrongwrong, ArrayList<PVector> positions) {
strokeWeight(2.5);
rect(width/1.5, 50, width-width/1.5-50, 400,75);
textSize (75);
text("Wrong!",width/1.23,105);
textSize (50);
for (int i=0; i < wrongwrong.length(); i++){
  text(wrongwrong.charAt(i), positions.get(i).x, positions.get(i).y);
}

fill (190,15,45);

}
