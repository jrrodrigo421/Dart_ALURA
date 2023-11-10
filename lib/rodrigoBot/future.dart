main() {
  // Future myFuture = Future(() {
  //   print('testando future');
  //   return 21;
  // }).then((value) => print(value));
  //
  // Future.delayed(Duration(seconds: 5));

  Future<int> myFuncFuture() async {
    await Future.delayed(Duration(seconds: 3));
    print('teste dento da myFuncFuture');
    throw Exception();
    return 2;
  }

  //padrão não usual;
  // print(myFuncFuture().then((value) => print(value))
  //     .onError((error, stackTrace) => print('Algum erro ocorreu'))
  //     .whenComplete(() => print('heeelooo'))
  // );


  //escrita assincrona, um jeito melhor para escrever
  // o codigo assincrono de forma sincrono:

  Future<int> myFutureErrorFunc(int a, int b) async {
    try{
      if(a>b){
        throw Exception();
      }
      print('dentro do myFutureErrorFunc');
      await Future.delayed(Duration(seconds: 6));
      return 42;
    }catch(e){
      print(e.toString());
      return 42;
    }finally{
      print('the future is finally Over');
    }
  }
  print(myFutureErrorFunc(2,3).then((value) => print(value)));
}


// teste exercicio:


// void main(){
//   Future exterminador = Future(() async{
//     print('Venha comigo se quiser viver');
//     await Future.delayed(Duration(seconds: 1));
//     print('.');
//     await Future.delayed(Duration(seconds: 1));
//     print('.');
//     await Future.delayed(Duration(seconds: 1));
//     print('.');
//     await Future.delayed(Duration(seconds: 1));
//     print('.');
//     await Future.delayed(Duration(seconds: 1));
//     print('.');
//     return 'Hasta la vista, baby';
//   }).then((value) => print(value));
//
//   print(exterminador);
// }