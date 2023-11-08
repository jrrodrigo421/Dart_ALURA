main() {
  String toString =
      retornaStrinfFormata(nome: 'laranja', peso: 25, diasColheita: 10);
  print(toString);

  Fruta frutas01 = Fruta("laranja", 10.50, 'amarelo', 'citrico', 20, 15);
  print(frutas01.nome);

  Fruta fruta02 = Fruta.nomeados(
      nome: 'maca',
      cor: 'red',
      peso: 10.0,
      sabor: 'doce',
      diasColheita: 25,
      diasAteFicarMadura: 10);
  print(fruta02.nome);

  fruta02 = Fruta.minusculas('laranja', peso: 10.2, cor: 'amarelo');
  print(fruta02.nome);

  Legume legume1 = Legume('xuxu', 100.2, 'verde', true);
  Fruta fruta00 = Fruta('banana', 23.80, 'amarela', 'doce', 20, 32);
  Nozes nozes1 = Nozes('nozes', 0.10, 'marrom', 'seila', 30, 20, 0.23);
  Citrica citrica = Citrica('limao', 0.53, 'verde', 'azedo', 50, 18, 9);

  legume1.cozinhar();
  fruta00.printAlimento();
  nozes1.printAlimento();
  citrica.printAlimento();
  citrica.toString();
  citrica.existeRefri(true);
  citrica.fazerSuco();

}

class Fruta extends Alimento {
  late String sabor;
  late int diasColheita;
  late int diasAteFicarMadura;
  late bool? isMadura;

  //construtor com parametro posicional obrigatorio
  Fruta(String nome, double peso, String cor, this.sabor, this.diasColheita,
      this.diasAteFicarMadura,
      {this.isMadura})
      : super(nome, peso, cor);

  //podemos passar contrutores personalizados nessa caso utilizamos exemplo de parametros nomeados requiridos
  Fruta.nomeados(
      {required String nome,
      required String cor,
      required double peso,
      required this.sabor,
      required this.diasColheita,
      required this.diasAteFicarMadura})
      : super(nome, peso, cor);

  Fruta.minusculas(String nome, {required double peso, required String cor})
      : super(nome, peso, cor) {
    nome = nome.toLowerCase();
  }

  void fazerSuco() {
    print('Voce fez um otimo suco de $nome');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Esta(a)$nome, pesa $peso grana e a cor é $cor');
  }
}

class Legume extends Alimento {
  bool isPrecisaCozinhar;

  Legume(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, $nome está cozonhando');
    }
  }
}

class Citrica extends Fruta {
  double nivelAzedo;

  Citrica(String nome, double peso, String cor, String sabor, int diasColheita,
      int diasAteFicarMadura, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasColheita, diasAteFicarMadura);

  void existeRefri(bool existe){
    if(existe){
      print('Existe refrigerante de $nome');
    }else{
      print('Não existe refri de $nome');
    }


  }
}

class Nozes extends Fruta {

  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,int diasColheita, int diasAteFicarMadura,
      this.porcentagemOleoNatural):super(nome, peso, cor, sabor, diasColheita, diasAteFicarMadura);
}

String retornaStrinfFormata(
    {required String nome,
    required double peso,
    required int diasColheita,
    int diasParaMadura = 30,
    bool? isMadura}) {

  // if(isMadura == null){
  //   isMadura = diasColheita >= diasParaMadura;
  // }
  // intellij me recomendou assim.
  isMadura ??= diasColheita >= diasParaMadura;

  String maduraString = '';
  if (isMadura != null && !isMadura) {
    maduraString = 'não';
  }

  String result =
      'A $nome pesa $peso gramas! Ela foi colhida há $diasColheita e precisa de $diasParaMadura para amadurecer. Logo a $nome $maduraString está madura!';
  return result;
}
