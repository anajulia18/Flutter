void main() {

int l1 = 15;
int l2 = 8;
int l3 = 8;
  
  
  if (l1 < l2 + l3 && l2 < l1 + l3 && l3 < l1 + l2){
    
  print("Trata-se de um triângulo."); 
    if( l1 == l2 && l1 == l3){
    
  print("Triângulo Equilátero");   
  }
  else if (l1 == l2 || l2 == l3){
    
 print("Triângulo Isósceles"); 

    
  }
    
    else {
        print("Triângulo Escaleno"); 
    }

 }
  
  else {
    
  print("Não é triângulo."); 

  }
  

}
