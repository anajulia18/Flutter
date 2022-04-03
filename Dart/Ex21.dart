
void main () {

  //Cadastrando clientes

  Cliente cliente1 = new Cliente(1, 'Ana Julia', '912.982.555-19');
  Cliente cliente2 = new Cliente(2, 'Luiza', '516.902.555-88');

  final clientes = [cliente1, cliente2];

  print("CLIENTES CADASTRADOS: ");

  for (Cliente c in clientes) {
    print(c.dadosCliente());
  }

  print("-"*50);

  //Criando um tipo de conta para cada 

  final contas = [];

  ContaCorrente cc = new ContaCorrente(1, '912.982', 1200.00, 10.00);  
  contas.add(cc);

  ContaPoupanca cp = new ContaPoupanca(2, '516.902', 300.00, 5.00);
  contas.add(cp);

  print("ABERTURA DE CONTAS: ");

   for (Conta c in contas) {
    print("Conta ${c.numeroConta} para cliente ${c.idCliente} criada com sucesso! Saldo: ${c.saldo}");
  }

   print("-"*50);

   //Exemplos: saque, depósito e transferência de acordo com cada conta

   double valorSaque = 50;
   double valorDeposito = 100;
   double valorTransf = 10;

   print("TRANSAÇÕES CONTA CORRENTE: ");

   print("Sacando $valorSaque reais da Conta Corrente ${cc.numeroConta} com taxa de ${cc.taxaMovimentacao}% do valor sacado");
   print("Saldo anterior: ${cc.saldo}");
   print("Saldo atual: ${cc.saque(valorSaque)}");

   print("-"*10);
   
   print("Depositando $valorDeposito reais na Conta Corrente ${cc.numeroConta} ");
   print("Saldo anterior: ${cc.saldo}");
   print("Saldo atual: ${cc.deposito(valorDeposito)}");

   print("-"*10);
   
   print("Transferindo $valorTransf reais da Conta Corrente ${cc.numeroConta} com taxa de ${cc.taxaMovimentacao}% do valor transferido");
   print("Saldo anterior: ${cc.saldo}");
   print("Saldo atual: ${cc.transferencia(valorTransf)}");

   print("-"*50);

   print("TRANSAÇÕES CONTA POUPANÇA: ");

   print("Sacando $valorSaque reais da Conta Poupança ${cp.numeroConta} sem taxas");
   print("Saldo anterior: ${cp.saldo}");
   print("Saldo atual: ${cp.saque(valorSaque)}");

   print("-"*10);

   print("Depositando $valorDeposito reais na Conta Poupança ${cp.numeroConta}");
   print("Saldo anterior: ${cp.saldo}");
   print("Saldo atual: ${cp.deposito(valorDeposito)}");

   print("-"*10);

   print("Transferindo $valorTransf reais da Conta Poupança ${cp.numeroConta} sem taxas");
   print("Saldo anterior: ${cp.saldo}");
   print("Saldo atual: ${cp.transferencia(valorTransf)}");

   print("-"*10);

   print("O rendimento mensal em reais previsto para a Conta Poupança ${cp.numeroConta} com o saldo atual de ${cp.saldo} é de ${cp.calcularRendimentoMesAtual()} reais (Taxa de ${cp.taxaRendimento}%)");

   print("-"*50);

}

//Classes

class Cliente {

  int id;
  String nome;
  String documento;

  Cliente(this.id, this.nome, this.documento);

  String dadosCliente() {
    return "Id: $id | Nome: $nome | Documento: $documento";
  }

}

class Conta {

  int idCliente;
  String numeroConta;
  double saldo;

  Conta(this.idCliente, this.numeroConta, this.saldo);

  saque(double valorSaque) {
    saldo = saldo - valorSaque;
    return saldo;
  }

  deposito(double valorDep) {
    saldo = saldo + valorDep;
    return saldo;
  }
  
  transferencia(double valorTransf) {
    saldo = saldo - valorTransf;
    return saldo;
  } 

}

class ContaCorrente extends Conta {

  double taxaMovimentacao;

  ContaCorrente(idCliente, numeroConta, saldo, this.taxaMovimentacao):super(idCliente, numeroConta, saldo);

  saque(double valorSaque) {
    saldo = saldo - valorSaque - (valorSaque * taxaMovimentacao/100);
    return saldo;
  }
  transferencia(double valorTransf) {
    saldo = saldo - valorTransf - (valorTransf * taxaMovimentacao/100);
    return saldo;
  }  
}

class ContaPoupanca extends Conta {

  double taxaRendimento;

  ContaPoupanca(idCliente, numeroConta, saldo, this.taxaRendimento):super(idCliente, numeroConta, saldo);

  calcularRendimentoMesAtual() {
    double rendimento = saldo * taxaRendimento/100;
    return rendimento;
  } 
}