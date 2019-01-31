
//vult array bord met array kaarten
void kaartenOpBord() {
  for (int i =0; i < bord.length; i++) {
    for (int j = 0; j <bord[0].length-1; j++) {
      bord[i][j] = kaarten[i][j];
    }
  }
  //bord.length maal verwijder de 1ste rij
  for (int i =0; i < bord.length; i++) {
    kaarten = removeArray(kaarten, 0);
  }
}

void nieuwekaartenOpBord(int a, int b, int c) {

  for (int j = 0; j <bord[0].length-1; j++) {
    bord[a][j] = kaarten[0][j];
    bord[b][j] = kaarten[1][j];
    bord[c][j] = kaarten[2][j];
  }
  
  kaarten = removeArray(kaarten, 0); 
  kaarten = removeArray(kaarten, 1); 
  kaarten = removeArray(kaarten, 2);
}

void kaarten() {
  /*
   pak 4 eigenschappen = 1 kaart
   vorm, vormNummer, vormKleur, vormOpvulling = kaart1
   */
  int [] fillWith = new int [aantalEigenschappen];
  for ( int i = 0; i < aantalKaarten-1; i++) {
    arrayCopy(fillWith, kaarten[i]); //kopieert fillWith naar kaarten
    fillWith[0]++;
    if (i!=kaarten.length-1) { //als i niet gelijk is aan 1 minder dan kaarten.length
      for ( int j = 0; j < fillWith.length; j++) { //runt volledige kaarten.length door
        if ( fillWith[j] == aantalVormen) { // als 
          fillWith[j+1]++;
          fillWith[j]-=aantalVormen;
        }
      }
    }
  }
}









