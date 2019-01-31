
int [] [] hussel(int [] [] kaartenArray) {

  for (int x = 0; x< 500; x++) {
    int randomnumber1 = int(random(kaartenArray.length));
    int randomnumber2 = int(random(kaartenArray.length));
    int mem[] = kaartenArray[randomnumber1];
    kaartenArray[randomnumber1] = kaartenArray[randomnumber2];
    kaartenArray[randomnumber2] = mem;
  }
  return kaartenArray;
}

//array index out of bounds
int[] [] removeArray(int array[][], int rij) {
  int [] [] resultaat = new int [array.length-1][array[0].length]; 
  int notI =0;
  for (int i =0; i < array.length; i++) {
    for (int j =0; j < array[0].length; j++) {
      if (i!=rij) {

        resultaat[notI][j] = array[i][j];
      }
    }
    if (i!=rij) {
      notI++;
    }
  }
  return resultaat;
}
