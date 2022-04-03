
void main () {

  final valor = [];
  const multip = 2;

  //populando dez números (de 1 a 20) no array numbers
  for(int i = 1; i <= 20; i++) {
    valor.add(i); 
  }

  print("Origem: $valor ");
    
  //multiplicando cada valor pela constante na mesma posição
  for(int j = 0; j < valor.length; j++) {    
    valor[j] = valor[j] * multip;
  } 

  print("Multiplicados por $multip = $valor ");

}