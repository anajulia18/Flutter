
void main() {

  Pessoa p1 = Pessoa("Ana Julia", 20);
  Pessoa p2 = Pessoa("Luiza", 13);
  Pessoa p3 = Pessoa("Juliana", 46);
  Pessoa p4 = Pessoa("Alex", 47);
  Pessoa p5 = Pessoa("Junior", 02);

  final pessoas = [p1, p2, p3, p4, p5];

    for (Pessoa p in pessoas) {
      print(p.dadosPessoa());
    }

}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  String dadosPessoa() {
    return "$nome - $idade anos";
  }

}