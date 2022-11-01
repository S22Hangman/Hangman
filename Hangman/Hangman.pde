 int num = 0;


void setup () {
  fullScreen();
  frameRate (10);
}

void draw () {
  man();
  num++;
}



void man(){
 

 
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
  line (width/2, height/3, width/2, 400);
  //ræben som manden skal kvæels med.
}

void head() {
  stroke(10);
  circle (width/2, 450, 75);
  circle (width/2.03,445,5);
  circle (width/1.97,445,5);
  //rect ()width/2.015,440,width/1.97,
  //her er hovedet tegnet
}


void neck () {
  strokeWeight(8);
  line (width/2, 490, width/2, 525);
}
void torso(){
  strokeWeight (12);
line (width/2,525,width/2,600);
}

void leftarm (){
line (width/2,562.5,width/2.25,500);
}

void rightarm (){
line (width/2,562.5,width - width/2.25,500);
}

void leftleg(){
line (width/2,600,width/2.20,675);
}


void rightleg(){
line (width/2,600,width-width/2.20,675);

}
