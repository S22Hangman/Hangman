void MainMenu() {
  if (state == -1) {
    LayOutMM();
  }
}
//Tegningen af Mainmenuen
void LayOutMM() {
  pushMatrix();
  translate(200, 0);
  rope();
  head();
  neck();
  torso();
  leftarm();
  rightarm();
  leftleg();
  rightleg();
  popMatrix();

  textSize (100);


  fill(value);
  rect(width/1.3-100, height/2-100, 200, 150);
   fill(250);
    text ("Play", width/1.3, height/2);
 
}

  void mouseClicked() {
    if (state == -1) {
      if (mouseX > width/1.3-100 && mouseX < width/1.3-100 + 200 && mouseY > height/2-100 && mouseY < height/2-100 + 150) {
        state = 0;
      }
    }
  }
