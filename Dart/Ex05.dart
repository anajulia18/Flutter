void main() {
 double v1 = 5.15;
 double v2 = 50;
 double v3 = 12.30;
 double v4 = 8.90;
 double v5 = 7.50;
 int pgto = 100;
  
 double troco = pgto - (v1+v2+v3+v4+v5); 
 double pagar = (v1+v2+v3+v4+v5);
 String total = pagar.toStringAsFixed(2);
 String resultado = troco.toStringAsFixed(2);

 print("Total a pagar: R\$ $total");
print("Devolva em Troco: R\$ $resultado");

  
}
