void main () {

 final numbers = [09, 12, 43, 53, 90, 45, 33, 39, 12, 21];

 int maiorValor = numbers[0];

 for(int i = 1; i < numbers.length; i++) {
     if (numbers[i] > maiorValor) {
       maiorValor = numbers[i];
     }
 }
  print("O maior valor é $maiorValor ");

}