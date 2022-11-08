void setup(){
String[] ordbog = loadStrings("Ordbog.txt");
random(ordbog.length);
int tal = int(random(ordbog.length));
println(ordbog[tal]);

size (200, 200);
textAlign(CENTER);
text(ordbog[tal], width/2, height/2);


}
