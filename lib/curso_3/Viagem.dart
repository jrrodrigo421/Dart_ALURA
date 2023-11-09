import 'package:projeto_inicial/curso_3/Transporte.dart';

class Viagem {
  static String codigo = 'HSUAHS232';
  double dinheiro = 0;
  Transporte locomocao;
  TipoCompra tipoCompra;

  Set<String> registrosVisitados = <String>{};

  Map<String, dynamic> registrarPrecos = {};

  Viagem({required this.locomocao, required this.tipoCompra});

  factory Viagem.criar(TipoCompra tipoCompra, {String tipo = ""}) {
    switch (tipo) {
      case "Online":
        return Remoto(
          tipo: tipo,
          codigo: '13513SS',
          dinheiro: 3000.00,
          locomocao: Transporte.aviao,
          tipoCompra: TipoCompra.ONLINE,
        );
      case "Fisico":
        return Fisico(
          tipo: tipo,
          codigo: '1351SDRR',
          dinheiro: 300.00,
          locomocao: Transporte.trem,
          tipoCompra: TipoCompra.COMPRA_FISICA,
        );
      default:
        throw ArgumentError('Tipo de viagem desconhecido: $tipo');
    }
  }

  int _totalLocaisVisitados = 0;

  printCodigo() {
    print(codigo);
  }

  void escolherMeioDeTransporteEnum(Transporte transporte) {

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
      case Transporte.aviao:
        print('É skate');
        break;
      case Transporte.trem:
        print('É trem');
      default:
        print('testando default');
    }
  }

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{
    return _totalLocaisVisitados;
  }

  void set alterarLocaisvisitados(int novaQtd){
    if(novaQtd < 10){
      _totalLocaisVisitados = novaQtd;
    }else{
      print("Não é possível");
    }
  }
}

class Remoto extends Viagem {
 late String tipo;
 int quantidade = 0;

  Remoto({required this.tipo,required String codigo, required double dinheiro, required Transporte locomocao, required TipoCompra tipoCompra})
      : super(locomocao: locomocao, tipoCompra: tipoCompra);

  int qtdViagensRemota(int x){
    print('O codigo da viagem é ${Viagem.codigo} e o numero é ${quantidade + x}');
    int resultado = quantidade + x;
    return resultado;
  }

}

class Fisico extends Viagem{
 late  String tipo;

  Fisico( {required this.tipo,required String codigo, required double dinheiro, required Transporte locomocao, required TipoCompra tipoCompra})
      : super(locomocao: locomocao, tipoCompra: tipoCompra);
}

enum TipoCompra {
  ONLINE,
  COMPRA_FISICA
}
