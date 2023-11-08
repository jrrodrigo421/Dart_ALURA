main() {
  Pessoa pessoaDandara = Pessoa(nome: 'Teste', idade: 30, estaAutenticada: true);
  Pessoa pessoaJr = Pessoa(nome: 'testeeer', idade: 22, estaAutenticada: false);

  Map<String, dynamic> metodoRodriguinho = pessoaDandara.toMap();
  Map<String, dynamic> metodoRodriguinho2 = pessoaJr.toMap2();

  print('*******************   ${metodoRodriguinho}');
  print('*******************   ${metodoRodriguinho2}');
}

class Pessoa {
  late String nome;
  late int idade;
  late bool estaAutenticada;

  Pessoa({
    required String nome,
    required int idade,
    required bool estaAutenticada,
  }) : nome = nome, idade = idade, estaAutenticada = estaAutenticada;

  Map<String,dynamic> toMap(){
    Map<String, dynamic> resultado = {};
    resultado["nome"] = this.nome;
    resultado["idade"] = this.idade;
    resultado["estaAutenticada"] = this.estaAutenticada;
    return resultado;
  }

  Map<String, dynamic> toMap2() {
    return {
      'nome': nome,
      'idade': idade,
      'estaAutenticada': estaAutenticada,
    };
  }
}
