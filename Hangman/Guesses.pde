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
