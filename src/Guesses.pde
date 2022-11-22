boolean guesses (String word, String right) {
  int lineWidth = width / 50;
  int x = width / 2;
  int y = 600;
  
  boolean guess = true;

  for (int i=0; i < word.length(); i++) {
    strokeWeight(5);



    if (x > width-75) {
      x = width / 2;
      y += 100;
    }


    
    // laver linjen under teksten og skriver bogstaverne over linjen
    line (x, y, x + lineWidth, y);
    if (right.indexOf(word.charAt(i)) > -1) {
      text ((word.charAt(i) + "").toUpperCase(), x +lineWidth/2, y-10);
    } else {
      guess = false;
    }

    x += width / 25;
  }
  return guess;
}

// laver kassen til wrong guesses
void wrongGuesses (String wrongwrong, ArrayList<PVector> positions) {
  strokeWeight(2.5);
  rect(width/1.5, 50, width-width/1.5-50, 400, 75);
  textSize (75);
  text("Wrong!", width/1.23, 105);
  textSize (50);
  for (int i=0; i < wrongwrong.length(); i++) {
    text(wrongwrong.charAt(i), positions.get(i).x, positions.get(i).y);
  }

  fill (190, 15, 45);
}
