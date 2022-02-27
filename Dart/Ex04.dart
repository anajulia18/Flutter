void main() {
 double cotacao = 5.15;
 double qtd = 500;
 double reais = (cotacao*qtd);
 
 String resultado = reais.toStringAsFixed(2);


 print("Valor em Reais: R\$ $resultado");
  
}
