void main(){
  //convenção variaveis booleanas is
  // bool isAprovado=true;
  // print(isAprovado);

  String nome = 'laranja';
  double peso = 100.2;
  String corFruta = "Verda e Amarela";
  String sabor = "Doce e citrica";
  int diasColheita =20;
  bool isMadura = funcEstaMadura(diasColheita);
  print(isMadura);
  print(funcEstaMadura(50));



  var isMadurateste = mostrarMadura('laranja', 35);
  print(mostrarMadura('Maca', 14));

  //usando parametro posicional obrigatorio
  mostrarMadura('manga', 80);

  //usando parametro opcional nomeado
  mostrarMadura("banana", 16, cor: 'amarelo');

  //usando o parametro default (padrao)
  mostrarMadura2('uva', 42);

  //parametros required
  mostrarMadura3('abacate', 21, cor: 'verde');

  mostrarMadura4(nome: 'limao', dias: 31, cor: 'veRRde');

}

//tipos de parametros:
//Posicionais obrigatórios
//Nomeados Opcionais
//Parametros 'Padrão"
//Mddificador "required"


//podemos utilizar ou nao o void
// void estaMadura(){
//
// }

estaMadura(){

}




mostrarMadura(String nome, int dias, {String? cor}){
  if(dias >= 30){
    print("A $nome esta madura a mais de $dias dias");
  }else{
    print('A $nome não esta madura ainda falta alguns dias, pois esta apenas com $dias');
  }
  if(cor != null){
    print('A $nome é $cor');
  }
}

//parametros default
mostrarMadura2(String nome, int dias, {String cor = 'sem cor'}){
  if(dias >= 30){
    print("A $nome esta madura a mais de $dias dias");
  }else{
    print('A $nome não esta madura ainda falta alguns dias, pois esta apenas com $dias');
  }
  if(cor != null){
    print('A $nome é $cor');
  }
}

//parametro required

mostrarMadura3(String nome, int dias, {required String cor}){
  if(dias >= 30){
    print("A $nome esta madura a mais de $dias dias");
  }else{
    print('A $nome não esta madura ainda falta alguns dias, pois esta apenas com $dias');
  }
  if(cor != null){
    print('A $nome é $cor');
  }
}

//parametros required
mostrarMadura4({required String nome, required int dias, required String cor}){
  if(dias >= 30){
    print("A $nome esta madura a mais de $dias dias");
  }else{
    print('A $nome não esta madura ainda falta alguns dias, pois esta apenas com $dias');
  }
  if(cor != null){
    print('A $nome é $cor');
  }
}


bool funcEstaMadura(int dias){
  if(dias >= 30){
    return true;
  }else{
    return false;
  }
}