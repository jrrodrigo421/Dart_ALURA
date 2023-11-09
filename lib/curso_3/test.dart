import 'package:uuid/uuid.dart';


main(){

  //teste usando package Uuid
  Conta conta_1 = Conta('Santander');
  print(conta_1.id);
  

}
class Conta{
  String? id = Uuid().v1();
  String nome;
  double _saldoReal = 0;

  Conta(this.nome);

  double get getSaldo{
    return _saldoReal * cambioHoje();
  }

  void set setSaldo(double saldo){
    _saldoReal = (_saldoReal * saldo)/cambioHoje();
  }

  int cambioHoje(){
    DateTime dateTime = DateTime(2023);
    int dia = dateTime.day;
    return dia;
  }

}