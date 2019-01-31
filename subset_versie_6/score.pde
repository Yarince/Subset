boolean isKlaar() {

  if (set >1 && setsgevonden ==0 || bord.length==0 ) {
  achtergrond(foto[foto.length-1]);
  tekenControls();
  textSize(30);
  text("Je hebt "+set+"set(s) gevonden!!!", 1*(bordBreedte/4)+marge, (schermHoogte/3)+marge);
  start = true;
  return true;
  } else  return false;
}

