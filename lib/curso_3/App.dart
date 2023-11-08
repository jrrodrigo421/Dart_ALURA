import 'package:projeto_inicial/curso_3/Viagem.dart';

import 'Transporte.dart';

void main(){
  Viagem viagemMaio = Viagem(locomocao: Transporte.trem);
  print(viagemMaio.consultarTotalLocaisVisitados);

  viagemMaio.visitar('Museu');
  print(viagemMaio.consultarTotalLocaisVisitados);

  //setando valor para o metodo set
  viagemMaio.alterarLocaisvisitados = 18;
  print(viagemMaio.consultarTotalLocaisVisitados);


}





