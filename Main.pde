Memory memo;

void setup() {
  size(600, 720);
  memo = new Memory(4, 5);
  memo.melanger();
}

void draw() {
  background(255);
  memo.dessiner();
}

void mousePressed(){
  memo.jeu();
}
