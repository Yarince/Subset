PImage achtergrond;

String [] foto = {
  "0.jpg", 
  "1.jpg", 
  "2.jpg", 
  "3.jpg", 
  "4.jpg",
  "finish.jpg"
};


void achtergrond(String link) {
  String foto = link;
  achtergrond = loadImage(foto, "jpg");
  //image(achtergrond, 0, 0, bordBreedte, schermHoogte);
  image(achtergrond, 0, 0, width, height);
}




