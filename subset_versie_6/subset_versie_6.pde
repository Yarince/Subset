

///////random index  
///////fix finish!!!!!!!!!!!!!!!!!!!!





/*
Yarince Martis
 
 16-10-2015
 
 SubSet versie 1
 */

final int schermBreedte = 920;
final int schermHoogte = 600;
final int bordBreedte = (schermBreedte/3)*2; //  2/3 bord
final int menuBreedte = schermBreedte/3; //  1/3 menu
final int aantalEigenschappen = 4;  
final int aantalVormen = 3;
final int kaartBreedte = bordBreedte/5;
final float kaartLengte = schermHoogte/3.5;
final int marge = 15;
int [] [] sets ;
int [] [] bord;
int aantalKaarten = int(pow( aantalVormen, aantalEigenschappen));
boolean [][] kaartenClicked;
int [][] kaarten;
int achtergrondNummer = 0;
boolean start = false;
boolean finish;
int teller =0;
int set = 0;
int setsgevonden = 0;
int kaartkleur = 255;

void setup() {
  textAlign(LEFT, TOP);
  achtergrond(foto[achtergrondNummer]);
  size(schermBreedte, schermHoogte);
  kaartenClicked = new boolean[aantalEigenschappen][aantalVormen];
  kaarten = new int[aantalKaarten][aantalEigenschappen];
  bord = new int [aantalVormen*aantalEigenschappen] [aantalEigenschappen+1];

  kaarten();
  kaarten = hussel(kaarten);
  setsgevonden = aantalSets();
  teken();
}


void draw() {
  if (!finish) {
    if (start) {
      tekenKaart();
    }
    tekenControls();
  }
  finish = isKlaar();
}

void mousePressed() { 
  knop();
  if (!finished) {
    int x = round(mouseX/( bordBreedte/4));
    int y = round(mouseY/( schermHoogte/3));
    wissel(x, y);

    bordClicked();
    if (teller ==3) {
      checkkaarten();
    }
    setsgevonden = aantalSets();
  }
}

//wisselt van aan geclicked naar niet aan geclicked
void wissel(int i, int j) {
  if (start) {
    if (i<=kaartenClicked[0].length && teller < 3) {

      if (!kaartenClicked[i][j]) {
        kaartenClicked[i][j]=true;
        teller++;
      } else {
        kaartenClicked[i][j] = false;
        teller--;
      }
    } else if (i<=kaartenClicked[0].length && teller >= 3 &&kaartenClicked[i][j]) {
      kaartenClicked[i][j] = false;
      teller--;
    }
  }
}

