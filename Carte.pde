final int DOS = 1;
final int FACE = 2;
final int RAMASSEE = 3;

class Carte {
  float x, y; // position
  float w, h; // taille
  char lettre;
  int etat; // DOS, FACE ou RAMASSEE

  // Crée une carte avec position, taille et lettre données en argument
  Carte(float x, float y, float w, float h, char lettre) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.lettre = lettre;
    etat = DOS;
  }

  void dessiner() {
    noStroke();
    if (etat == DOS) {
      fill(0, 76, 76);
      rect(x, y, w, h, 10);
    } else if (etat == FACE) {
      fill(176, 216, 216);
      rect(x, y, w, h, 10);
      fill(0, 76, 76);
      textAlign(CENTER, CENTER);
      textSize(h / 2);
      text(lettre, x + w / 2, y + h / 2);
    }
  }

  // Change l'état de la carte de DOS à FACE et vice versa
  // N'a aucun effet sur les cartes ramassées
  void retourner() {
    if(etat == DOS){
      etat = FACE;
    }
    else if(etat == FACE){
      etat = DOS;
    }
  }

  // Change l'état de la carte à RAMASSEE
  void ramasser() {
    etat = RAMASSEE;
  }

  // Échange les lettres de cette carte et une autre carte
  void echangerLettreAvec(Carte autre) {
    char l = lettre;
    lettre = autre.lettre;
    autre.lettre = l;
  }

  // Si la carte est de dos et le point (mx, my) est à son intérieur,
  // tourne la carte de face et renvoie true
  // Sinon renvoie false sans changer son état
  boolean click(int mx, int my) {
    if(etat == DOS && x < mx && mx < x + w && y < my && my < y + h){
      etat = FACE;
      return true;
    }
    return false;
  }
}
