int[][] knoppen = {
  {
    bordBreedte + menuBreedte/20, schermHoogte-menuBreedte/9, menuBreedte/5, 25, #ffffff
  }
  , {    
    //uit de weg want het geeft een fout met aantal kaarten in het dek en aantal sets op tafel
    schermBreedte +1000/* bordBreedte+ int(6*(menuBreedte/20))*/, schermHoogte-menuBreedte/9, menuBreedte/5, 25, #ffffff
  }
  , 
  {
    bordBreedte+ int(11*(menuBreedte/20)), schermHoogte-menuBreedte/9, int(menuBreedte/2.3), 25, #ffffff
  }
};


void tekenControls() {
  stroke(0);
  for (int i = 0; i < knoppen.length; i++) {
    fill(knoppen[i][4]);
    rectMode(CORNER);
    rect(knoppen[i][0], knoppen[i][1], knoppen[i][2], knoppen[i][3], 5, 5, 5, 5); 
    fill(0);
    textSize(15);
  }
  if (!start) {
    text(" Start", knoppen[0][0], knoppen[0][1]);
  } else {
    text(" Stop", knoppen[0][0], knoppen[0][1]);
  }
  //geeft fout met aantal kaarten in dek en aantal sets op tafel
  //  text(" Hussel", knoppen[1][0], knoppen[1][1]);
  text(" Next background", knoppen[2][0], knoppen[2][1]);
  sets();
}

void dek() {
  //er is niks dat 0 kaarten in de array correct weer geeft
  for (int x =0; x < kaarten.length; x++) {
    fill(kaartkleur);
    stroke(0);
    rect((x/3)*2+bordBreedte+(marge*2), (x/3)*2+schermHoogte/5+marge, kaartBreedte, kaartLengte, 10, 10, 10, 10);
    fill(0);
    textSize(11);
    // teken();
    text("Aantal kaarten \nin het dek= "+kaarten.length, 
    (kaarten.length/9+bordBreedte+(marge*2))+x, (kaarten.length/8*8+schermHoogte/5 +marge)+x);
  }
}

void sets() {
  fill(255);
  stroke(255);
  if (start) {
    textSize(15);

    rect( bordBreedte + menuBreedte/20, schermHoogte-3*(menuBreedte/9), int(menuBreedte/2.2)*2, 25);    

    if (!finish) {
      fill(255);
      rect( bordBreedte + menuBreedte/20, schermHoogte-4*(menuBreedte/9), int(menuBreedte/2.2)*2, 25);
      fill(0);
      text("  "+setsgevonden+" set(s) gevonden op het bord", bordBreedte + menuBreedte/20, schermHoogte-4*(menuBreedte/9));
    }
    fill(0);
    text("  score= "+set+" set(s) ", bordBreedte + menuBreedte/20, schermHoogte-3*(menuBreedte/9));
  }
}

