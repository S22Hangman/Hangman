void galge() {
  strokeWeight(10);
  stroke(10);
  line(width/3, height/3, 300, height/3); // laver linje fra midten af min skærm mod venstre
  line(300, height/3, 300, 700); // laver en linje fra slutpunktet af linjen herover, og kører den ned til samlingen af de 2 linjer herunder
  line(200, 900, 300, 700); //samles sammen med linjen herunder for at skabe foden af vores galge
  line(400, 900, 300, 700); //samles sammen med linjen herover for at skabe foden af vores galge
  line(300, 450, height/3, 360); // laver en en "Støtte" pæl på vores galge, den er kun til dekoration though
}
void bakke() {
  strokeWeight(10);
  stroke(10);
  noFill();
  arc(300, 1100, 500, 430, PI, 2*PI);
}
