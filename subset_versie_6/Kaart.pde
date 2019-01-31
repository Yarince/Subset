


 /*  aantal      vorm        kleur     opvulling  
   1 = 0    vierkant = 0       rood =0    donker  0
   2 = 1    rondje   = 1      groen =1    licht   1
   3 = 2     driehoek = 2      blauw =2    leeg    2
   */

void tekenKaart() {
  fill(kaartkleur);
  noStroke();
  for ( int y = 0; y < kaartenClicked[0].length; y++) { 
    for ( int x = 0; x < kaartenClicked.length; x++) {
      if (!kaartenClicked[x][y]) {
        fill(255);
      } else if (kaartenClicked[x][y]) {
        fill(100);
      }
      noStroke();
      rectMode(CORNER);
      rect(x*(bordBreedte/4)+marge, y*(schermHoogte/3)+marge, kaartBreedte, kaartLengte, 10, 10, 10, 10);
      tekenVormenVan(x, y);
    }
  }
}



void tekenVormenVan(int x, int y) {
  int kaart = (y*aantalEigenschappen)+x;
  int vormkleur = kaartkleur;

  for (int i = 0; i<bord[kaart][1]+1; i++) {
    if (bord[kaart][2]==0) {
      //rood
      vormkleur = #FF0000;
    } else if (bord[kaart][2]==1) {
      //groen
      vormkleur = #018902;
    } else if (bord[kaart][2]==2) {
      //blauw
      vormkleur = #0000FF;
    }
  }

  for (int i = 0; i<bord[kaart][1]+1; i++) {
    if (bord[kaart][3]==0) {
      stroke(vormkleur); 
      fill(vormkleur);
    } else if (bord[kaart][3]==1) {
      stroke(vormkleur); 
      fill(vormkleur, 100);
    } else if (bord[kaart][3]==2) {
      kaartkleur = 255;
      stroke(vormkleur); 
      fill(kaartkleur);
    }
  }
  vorm(x, y, kaart); //vorm + aantal
}

