import 'package:projeto_inicial/curso_4/models/account.dart';

main(){
  print('teste'.runtimeType);
  print(null.runtimeType);
  Null;


  // isEmpty(null);

  // String teste = 'teste'
  // teste = null;

  String? teste2 = 'teste';
  teste2 = null;

  Account? account; //= Account(name: "name", balance: 300, isAuthenticated: true);
  account.runtimeType;
  account.toString();
  account!.name;
}

bool isEmpty(String string) => string.length == 0;
