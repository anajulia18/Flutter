void main() {

double peso = 57;
double  altura = 1.63;
String  sexo = "Masculino";
double resultado = peso / (altura * altura);
  
String pesoIdeal = resultado.toStringAsFixed(2);  
  
  if (sexo == "Masculino"){
    if(resultado < 20 )
    {
    
      print("Seu Índice de Massa Corporal é: $pesoIdeal" + " - Abaixo do Peso"); 

    }
    else if (resultado > 20 && resultado < 25){
      
    print("Seu Índice de Massa Corporal é: $pesoIdeal" + " - Peso ideal"); 

    }
    else if(resultado > 25){
      
    print("Seu Índice de Massa Corporal é: $pesoIdeal" + " - Acima do Peso"); 

    }
    
  }
  
  
  else if(sexo=="Feminino")
  {
    if(resultado <19)
    {
    
      print("Seu Índice de Massa Corporal é: $pesoIdeal" + " - Abaixo do Peso"); 

    }
    else if (resultado >19 && resultado < 24){
      
    print("Seu Índice de Massa Corporal é: $pesoIdeal" + " - Peso ideal"); 

    }
    else if(resultado > 24){
      
    print("Seu Índice de Massa Corporal é: $pesoIdeal" + " - Acima do Peso"); 

    }

  }
  
    

 
  
}
