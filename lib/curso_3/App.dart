import 'package:projeto_inicial/curso_3/Viagem.dart';
import 'package:test/test.dart';

import 'Transporte.dart';

void main(){
  Viagem viagemMaio = Viagem(locomocao: Transporte.trem, tipoCompra: TipoCompra.COMPRA_FISICA);
  print(viagemMaio.consultarTotalLocaisVisitados);

  viagemMaio.visitar('Museu');
  print(viagemMaio.consultarTotalLocaisVisitados);

  //setando valor para o metodo set
  viagemMaio.alterarLocaisvisitados = 18;
  print(viagemMaio.consultarTotalLocaisVisitados);

  Viagem viagemPA = Viagem(locomocao: Transporte.aviao, tipoCompra: TipoCompra.COMPRA_FISICA);

  Remoto compraRemota = Remoto(tipo: 'Online', codigo: 'DSDS1231',
      dinheiro: 2000, locomocao: Transporte.bike, tipoCompra: TipoCompra.ONLINE);
  var teste = compraRemota.qtdViagensRemota(2);
  print(teste);

  Viagem viagem4 = Viagem.criar(TipoCompra.ONLINE);
  print(viagem4.tipoCompra);


  compraRemota.quantidade = 10 ;
  var compra = compraRemota.qtdViagensRemota(20);
  print(compra);

  test('Criação de Viagem Online', () {
    Viagem viagemOnline = Viagem.criar(TipoCompra.ONLINE, tipo: "Online");
    expect(viagemOnline.tipoCompra, TipoCompra.ONLINE);
  });

  test('Criação de Viagem Física', () {
    Viagem viagemFisica = Viagem.criar(TipoCompra.COMPRA_FISICA, tipo: "Fisico");
    expect(viagemFisica.tipoCompra, TipoCompra.COMPRA_FISICA);
  });





}






