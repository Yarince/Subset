boolean checkSet(int a, int b, int c) {
  boolean vorm=false;
  boolean kleur=false;
  boolean aantal=false;
  boolean opvulling=false;

  /*  aantal      vorm        kleur     opvulling  
   1 = 0    vierkant = 0       rood =0    donker  0
   2 = 1    rondje   = 1      groen =1    licht   1
   3 = 2     driehoek = 2      blauw =2    leeg    2
   */

  //vorm
  if (bord[a][1]!=bord[b][1]&&
    bord[b][1]!=bord[c][1]&&
    bord[a][1]!=bord[c][1]) {
    aantal=true;
  } else if (bord[a][1]==bord[b][1]&&
    bord[b][1]==bord[c][1]&&
    bord[a][1]==bord[c][1]) {
    aantal=true;
  } 

  // aantal
  if (bord[a][0]==bord[b][0]&&
    bord[b][0]==bord[c][0]&&
    bord[a][0]==bord[c][0]) {
    vorm=true;
  } else  if ( bord[a][0]!=bord[b][0]&&
    bord[b][0]!=bord[c][0]&&
    bord[a][0]!=bord[c][0]) {
    vorm=true;
  } 

  //kleur
  if (bord[a][2]==bord[b][2]&&
    bord[b][2]==bord[c][2]&&
    bord[a][2]==bord[c][2]) {
    kleur=true;
  } else if (bord[a][2]!=bord[b][2]&&
    bord[b][2]!=bord[c][2]&&
    bord[a][2]!=bord[c][2]) {
    kleur=true;
  }

  //opvulling
  if (bord[a][3]==bord[b][3]&&
    bord[b][3]==bord[c][3]&&
    bord[a][3]==bord[c][3]) {
    opvulling=true;
  } else if (bord[a][3]!=bord[b][3]&&
    bord[b][3]!=bord[c][3]&&
    bord[a][3]!=bord[c][3]) {
    opvulling=true;
  }

  boolean totaal=false; 

  if (vorm && kleur && aantal && opvulling) {
    totaal=true;
    //println("SET!!!!");
  }

  return totaal;
}




void checkkaarten() {
  int [] array = new int [3];
  int counter = 0;
  if (teller == 3) {
    for ( int i = 0; i < bord.length; i++) {
      if (bord[i][aantalEigenschappen]==1 &&counter < 3) { //kijkt hier naar de geselecteerde kaarten
        array[counter] = i;
        counter++;
      }
    }
    if (checkSet(array[0], array[1], array[2])) {
      nieuwekaartenOpBord(array[0], array[1], array[2]);
      if ( teller ==3) {
        set++;
      }
      deSelect();
      teken();
    }
  }
}




int aantalSets() {
  int counter = 0;
  sets = new int [200][3];
  for (int x = 0; x <  bord.length; x++) {
    for (int y = 0; y <  bord.length; y++) {
      for (int z = 0; z < bord.length; z++) {
        if (x != y && x!= z && y!= z) {

          if (checkSet(x, y, z)&&counter < 50) {
            counter++;
            sets[counter][0] = x;
            sets[counter][1] = y;
            sets[counter][2] = z;
          }
        }
      }
    }
  }

  for (int i = 0; i < sets.length; i++) {
    int [] temp = {
      0, 0, 0
    };
    int [] temp2 = sets[i];
    if (temp2[0]!=temp[0]||temp2[1]!=temp[1]||temp2[2]!=temp[2]) {
      println(sets[i][0], sets[i][1], sets[i][2]);
      setsgevonden++;
    }
  }
  println("");
  return counter/3;
}

