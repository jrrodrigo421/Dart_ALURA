void main(){
  escolherMeioDeTransporteEnum(Transporte.trem);

}

void escolherMeioDeTransporteEnum(Transporte locomocao){
    if(locomocao == Transporte.carro){
      print('Vou de carro');
    }else if(locomocao == Transporte.bike){
      print('Bike');
    }else{
      print('Outro transporte');
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