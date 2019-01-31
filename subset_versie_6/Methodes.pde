void teken() {
  if (!finish) {
    achtergrond(foto[achtergrondNummer]);
    dek();
    sets();
    tekenControls();
  } else 
    tekenControls();
}

void print2dArray(int [] [] array) {
  //print 2d array
  for ( int h =0; h < array.length; h++) {
    print("["+h+"] ");
    for (int i = 0; i < array[0].length; i++) {
      print(array[h][i]+" ");
    }
    println();
  }
}

void knop() {  
  for (int i = 0; i < knoppen.length; i++) {
    if ((mouseX >= knoppen[i][0]) && (mouseX <= knoppen[i][0] + knoppen[i][2]) && (mouseY >= knoppen[i][1]) && (mouseY <= knoppen[i][1] + knoppen[i][3])) {
      //start knop
      if ( i == 0) {
        start = !start;
        stop();
      } 

      if (!finished) {
        //geeft fout met aantal kaarten in dek en aantal sets op tafel
        //        //hussel knop
        //        if (i ==1) {
        //          deSelect();
        //          kaarten = hussel(bord);
        //        } 

        // background knop
        if ( i == 2) {
          if (achtergrondNummer < foto.length-2) {
            achtergrondNummer++;
          } else {
            achtergrondNummer = 0;
          }
          achtergrond(foto[achtergrondNummer]);
          teken();
        }
      }
    }
  }
}

void stop() {
  if (!start) {
    kaarten = new int[aantalKaarten][aantalEigenschappen];
    kaarten();
    kaarten = hussel(kaarten); 
    teken();
    set =0;
  } else {
    kaartenOpBord();
    teken();
  }
  teken();
  deSelect();
}

void deSelect() {
  for (int h = 0; h < kaartenClicked.length; h++) {
    for (int j = 0; j < kaartenClicked[0].length; j++) {
      kaartenClicked[h][j] = false;
    }
  } 
  teller =0;
}
void bordClicked() {
  //wisselt van kaartenClicked naar een extra rij in bord om te beter te kunnen bijhouden welke kaart geselecteerd is
  for (int i = 0; i < kaartenClicked.length; i++) {      
    for (int j = 0; j < kaartenClicked[0].length; j++) {
      if (kaartenClicked[i][j]) {
        bord[j*aantalEigenschappen+i][aantalEigenschappen] = 1;
      } else
        bord[j*aantalEigenschappen+i][aantalEigenschappen] = 0;
    }
  }
}

