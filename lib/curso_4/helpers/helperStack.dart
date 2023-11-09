
// Tema : tratamento de exceção testando  coneceito de pilha de execução :

import 'dart:io';

helperSatck(){
  print('Started Main');
  functionOne();
  print('finish Main');
}

void functionOne() {
  print('Started FunctionONe');

  //try on usa quando sabemos qual o erro que vai ser gerado


  try{
    functionTwo();

  }on IOException catch(exception, stackTrace) {
    print(stackTrace.toString());
    print("capiturado pelo functionOne");
    // print(exception.message);
    // print(exception.offset);
    // print(exception.source);
    print(exception.runtimeType);
    print(exception.toString());

    //vai continuar o fluxo caindo na main e quebrando o codigo pois ela na esta preparada para a exception
    rethrow;


  }
  // }on HttpException catch(e){
  //   print(e.uri);
  //
  // }on IOException catch(e){
  //   print('teste');
  //   print(e.toString());
  //
  //   //quando nao sabemos quando a excecao usamos direto o Exception pra pegar a excecao
  // } on Exception catch(e){
  //   print('teste');
  //   e.toString();
  // }catch(e){
  //   print('teste');
  //   print(e.toString());
  // }
    finally{
    print('chegou no finally');
  }
  print('finalized functionOne');
}

void functionTwo() {
  print('Started functionTWO');

  for(int i = 0; i <= 5 ; i++){
    print('VEZ $i');


    double amount = double.parse("Not a number");
  }
  print('finish functionTWO');
}

//lancar throw

void mainTeste(){
  // throw FormatException().toString();
  throw 'testeeee qualquer objeto pode ser  lancado no throw';
}