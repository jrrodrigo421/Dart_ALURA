void main(){
  // escolherMeioDeTransporteEnum(Transporte.trem);
  escolherMeioDeTransporteEnum(Transporte.aviao);
  // escolherMeioDeTransporteEnum(Transporte.carro);
  // escolherMeioDeTransporteEnum(Transporte.skate);
  // escolherMeioDeTransporteEnum(Transporte.patins);
}

void escolherMeioDeTransporteEnum(Transporte transporte) {
  // if(transporte == Transporte.carro){
  //   print('Vou de carro');
  // }else if(transporte == Transporte.bike){
  //   print('Bike');
  // }else{
  //   print('Outro transporte');
  // }
  print('Entrou aqui');

  //switch com enum incompleto obrigatorio colocar o default e passar algo caso o parametro nao for encontrado..
  // switch (transporte) {
  //   case Transporte.carro:
  //     print('É carro');
  //     break;
  //   case Transporte.bike:
  //     print('É bike');
  //     break;
  //   case Transporte.andando:
  //     print('É andando');
  //     break;
  //   case Transporte.skate:
  //     print('É skate');
  //     break;
  //   case Transporte.aviao:
  //     print('É skate');
  //     break;
  //   case Transporte.trem:
  //     print('É trem');
  //
  //   default:
  // print('testando default');
  //
  // }

  //switch com enum completo
  switch (transporte) {
    case Transporte.carro:
      print('É carro');
      break;
    case Transporte.bike:
      print('É bike');
      break;
    case Transporte.andando:
      print('É andando');
      break;
    case Transporte.skate:
      print('É skate');
    case Transporte.patins:
      print('Patins');
      break;
    // case Transporte.aviao:
    //   print('É skate');
    //   break;
    case Transporte.trem:
      print('É trem');
    default:
      print('testando default');
  }
}



enum Transporte{
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins,
  trem
}
