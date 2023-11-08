import 'package:projeto_inicial/curso_3/Transporte.dart';

class Viagem {
  static String codigo = 'HSUAHS232';
  double dinheiro = 0;
  Transporte locomocao;

  Set<String> registrosVisitados = <String>{};

  Map<String, dynamic> registrarPrecos = {};

  Viagem({required this.locomocao});

  int _totalLocaisVisitados = 0;


  printCodigo() {
    print(codigo);
  }

  void escolherMeioDeTransporteEnum(Transporte transporte) {
    // if(transporte == Transporte.carro){
    //   print('Vou de carro');
    // }else if(transporte == Transporte.bike){
    //   print('Bike');
    // }else{
    //   print('Outro transporte');
    // }

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

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{
    return _totalLocaisVisitados;
  }
}
