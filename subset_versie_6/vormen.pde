
/* Set vormen
 Yarince Martis
 12/10/2015
 */

void vorm(int x, int y, int kaart) {
  for (int i = 0; i<bord[kaart][0]+1; i++) {
    if (bord[kaart][1]==0) {
      vierkant((x*(bordBreedte/4))+marge+(kaartBreedte/2), 
      (y*(schermHoogte/3))+marge+((i+1)*(kaartLengte/4)));
    } else if (bord[kaart][1]==1) {
      rondje((x*(bordBreedte/4))+marge+(kaartBreedte/2), 
      (y*(schermHoogte/3))+marge+((i+1)*(kaartLengte/4)));
    } else if (bord[kaart][1]==2) {
      driehoek((x*(bordBreedte/4))+marge+(kaartBreedte/2), 
      (y*(schermHoogte/3))+marge+((i+1)*(kaartLengte/4)));
    }
  }
}



void rondje(float x, float y) {
  ellipseMode(CENTER);
  ellipse(x, y, kaartBreedte/2, kaartLengte/8);
}

void vierkant(float x, float y) {
  rectMode(CENTER);
  rect(x, y, (bordBreedte/6), schermHoogte/15);
}

void driehoek(float x, float y) {                   
  triangle( x, y, x-(kaartBreedte/3), y+(kaartLengte/10), x+(kaartBreedte/3), y+(kaartLengte/10));
}

