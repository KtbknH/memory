class Memory {
  Carte[] cartes;
  int nbFace;
  int[] indFace;

  Memory(int lignes, int colonnes) {
    cartes = new Carte[lignes * colonnes];
    float w = float(width) / colonnes;
    float h = float(height) / lignes;
    int i = 0;
    for (int l = 0; l < lignes; l++) {
      for (int c = 0; c < colonnes; c++) {
        cartes[i] = new Carte(c * w + 5, l * h + 5, w - 10, h - 10, char('A' + i / 2));
        i++;
      }
    }
    nbFace = 0;
    indFace = new int[2];
  }

  // Dessine toutes les cartes
  void dessiner() {
    for(Carte card: cartes){
      card.dessiner();
    }
  }
  
  void melanger(){
    for(int i = 0; i < cartes.length - 1; i++){
      int j = int(random(i, cartes.length));
      cartes[i].echangerLettreAvec(cartes[j]);
    }
  }
  
  void jeu(){
    if(nbFace == 2){
      if(cartes[indFace[0]].lettre == cartes[indFace[1]].lettre){
        cartes[indFace[0]].ramasser();
        cartes[indFace[1]].ramasser();
      }
      else{
        cartes[indFace[0]].retourner();
        cartes[indFace[1]].retourner();
      }
      nbFace = 0;
    }
    else if(nbFace < 2){
      for(int i  = 0; i < cartes.length; i++){
        if(cartes[i].click(mouseX, mouseY)){
          nbFace += 1;
          indFace[nbFace - 1] = i;
        }
      }
    }
  }
}
