class Cafe{
  late String _temperatura;

  void esquentar(){_temperatura = 'quente';}
  void esfriar(){_temperatura = 'gelado';}
  //versção do artigo
  // String servir()=> _temperatura + 'cafe';

  //versão para dart mais recente o inteliJ sugeriu interpolar
  String servir()=> '${_temperatura}cafe';

}
main(){
  var cafe = Cafe();
   cafe.esquentar();
  print(cafe.servir());
}