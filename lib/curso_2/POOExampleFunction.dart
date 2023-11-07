main(){
 String toString =  retornaStrinfFormata(nome: 'laranja', peso: 25, diasColheita: 10);
  print(toString);
}

class Fruta{

  late String nome;
  late double peso;
  late int diasColheita;
  late int diasAteFicarMadura;
  late bool isMadura;

  Fruta(this.nome, this.peso, this.diasColheita, this.diasAteFicarMadura, this.isMadura);

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