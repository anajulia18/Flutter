
void main() {

  Pessoa p1 = Pessoa("Joana", 20, "F");  
  Pessoa p2 = Pessoa("Laura", 10, "F");
  Pessoa p3 = Pessoa("Ana Clara", 29, "F");
  Pessoa p4 = Pessoa("Caio", 46, "M");
  Pessoa p5 = Pessoa("Pedro", 2, "M");

  final pessoas = [p1, p2, p3, p4, p5];

    for (Pessoa p in pessoas) {
      if (p.sexo == "F") {
      print(p.dadosPessoa());
      }
    }
}

class Pessoa {
  String nome;
  int idade;
  String sexo;

  Pessoa(this.nome, this.idade, this.sexo);

  String dadosPessoa() {
    return "Nome: $nome | Idade: $idade | Sexo: $sexo";
  }

}