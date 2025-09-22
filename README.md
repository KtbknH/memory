# Memory (Processing)

Un petit jeu de **Memory** réalisé en Processing.  
Le joueur clique pour retourner deux cartes :  
- si elles correspondent, elles restent découvertes et sont considérées comme ramassées,  
- sinon elles se retournent à nouveau.  

---

## Fonctionnement du jeu
- Une grille de cartes est affichée face cachée.  
- Chaque carte a une lettre attribuée. Les lettres sont présentes par paires.  
- Le joueur retourne les cartes en cliquant dessus.  
- Deux cartes identiques forment une paire ramassée.  
- Le but est de retrouver toutes les paires.

---

## Organisation du projet

### Main.pde
- Point d’entrée du programme.  
- Configure la fenêtre graphique.  
- Crée l’objet principal du jeu (`Memory`).  
- Lance le mélange des cartes.  
- Rafraîchit l’affichage en continu et appelle la logique du jeu lors des clics.

### Memory.pde
- Contient la logique principale du plateau.  
- Initialise les cartes avec leurs positions et leurs lettres.  
- Mélange les cartes pour créer la partie.  
- Gère le dessin du plateau.  
- Contrôle le déroulement du jeu : sélection des cartes, comparaison, gestion des paires trouvées.  

### Carte.pde
- Décrit une carte individuelle.  
- Stocke sa position, sa taille, sa lettre et son état (dos, face ou ramassée).  
- Définit comment une carte est dessinée à l’écran selon son état.  
- Gère les interactions : retournement et détection de clic.  

---

## Structure recommandée du projet
- **README.md** : ce fichier d’explication.  
- **Main.pde, Memory.pde, Carte.pde** : fichiers source du jeu.  
- **assets/** (optionnel) : images ou GIFs pour illustrer le projet dans le README.  

---

## Utilisation
1. Installer **Processing** (version 3 ou 4).  
2. Ouvrir le dossier du projet dans l’IDE Processing.  
3. Lancer `Main.pde`.  
4. Jouer directement en cliquant sur les cartes pour former des paires.  
