main(){
 String toString =  retornaStrinfFormata(nome: 'laranja', peso: 25, diasColheita: 10);
  print(toString);

  Fruta frutas01 = Fruta("laranja", 10.50, 'amarelo', 'citrico', 20, 15);
  print(frutas01.nome);

  Fruta fruta02 = Fruta.nomeados(nome: 'maca', cor: 'red', peso: 10.0, sabor: 'doce', diasColheita: 25, diasAteFicarMadura: 10);
  print(fruta02.nome);

  fruta02 = Fruta.minusculas('LARANJA');
  print(fruta02.nome);
}

class Fruta{

   late String nome;
   late double peso;
   late String cor;
   late String sabor;
   late int diasColheita;
   late int diasAteFicarMadura;
   late bool? isMadura;


  //construtor com parametro posicional obrigatorio
  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasColheita, this.diasAteFicarMadura, {this.isMadura});
//podemos passar contrutores personalizados nessa caso utilizamos exemplo de parametros nomeados requiridos
  Fruta.nomeados({required this.nome, required this.cor, required this.peso, required this.sabor, required this.diasColheita, required this.diasAteFicarMadura});

  Fruta.minusculas(this.nome){
    nome = nome.toLowerCase();

  }

}

String retornaStrinfFormata({required String nome, required double peso, required int diasColheita, int diasParaMadura = 30, bool? isMadura}){

  // if(isMadura == null){
  //   isMadura = diasColheita >= diasParaMadura;
  // }
  // intellij me recomendou assim.
  isMadura ??= diasColheita >= diasParaMadura;

  String maduraString = '';
  if(isMadura != null && !isMadura){
    maduraString = 'não';
  }

  String result = 'A $nome pesa $peso gramas! Ela foi colhida há $diasColheita e precisa de $diasParaMadura para amadurecer. Logo a $nome $maduraString está madura!';
  return result;

}