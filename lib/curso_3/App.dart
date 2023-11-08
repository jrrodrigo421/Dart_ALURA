import 'package:projeto_inicial/curso_3/Viagem.dart';

import 'Transporte.dart';

void main(){
  Viagem viagemMaio = Viagem(locomocao: Transporte.trem);
  var maio = viagemMaio.consultarTotalLocaisVisitados;
  print(maio);

}





