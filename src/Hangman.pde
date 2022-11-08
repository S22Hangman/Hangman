void man(int num) {
  switch(num) {
  case 0:
    rope();
    break;
  case 1:
    head();
    break;
  case 2:
    neck();
    break;
  case 3:
    torso();
    break;
  case 4:
    leftarm();
    break;
  case 5:
    rightarm();
    break;
  case 6:
    leftleg();
    break;
  case 7:
    rightleg();
    break;
  }
}

void rope () {
  stroke (221, 245, 5);
  strokeWeight (10);
  line (width/3, height/3, width/3, 400);
  //ræben som manden skal kvæels med.
}

void head() {
  strokeWeight (10);
  stroke(10);
  circle (width/3, 450, 75);
  circle (width/3.03, 445, 5);
  circle (width/2.93, 445, 5);
  //rect ()width/2.015,440,width/1.97,
  //her er hovedet tegnet
}


void neck () {
  strokeWeight(8);
  line (width/3, 490, width/3, 525);
}
void torso() {
  strokeWeight (12);
  line (width/3, 525, width/3, 600);
}

void leftarm () {
  strokeWeight (10);
  line (width/3, 562.5, width/3.25, 500);
}

void rightarm () {
  strokeWeight (10);
  line (width/3, 562.5, width/1.5 - width/3.25, 500);
}

void leftleg() {
  strokeWeight (10);
  line (width/3, 600, width/3.20, 675);
}


void rightleg() {
  strokeWeight (10);
  line (width/3, 600, width/1.5-width/3.20, 675);
}
