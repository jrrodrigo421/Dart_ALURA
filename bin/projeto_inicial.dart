import 'package:projeto_inicial/projeto_inicial.dart' as projeto_inicial;
import 'package:test/test.dart';

void main(List<String> arguments) {
  print('Hello world: ${projeto_inicial.calculate()}!');
  var teste = '10';


  // numeros hexadecimal:
  int idade = 0x00001A;
  print(idade);

  //representação em exponencial
  double valor = 480e6;
  print(valor);

  bool verdade = true;
  String teste2 = 'teste';

  String frase = 'Teste $verdade......'
      '$valor teste \n\n'
      'heloo';

  print(frase);

  print('\n\n\n');

  // casos de conversão do dart ( Type Casting in Dart)


  //String para inteiro
  var one =  int.parse(teste);
  print(one.toString());
  print("1.");
  print(one);
  print(one.runtimeType);
//  String para double
  var onePointOne = double.parse('1.1');
  print('\n\n');
  print(onePointOne);
  print(onePointOne.runtimeType);

  //Inteiro para String;
  var twenty = 20.toString();
  print(twenty);
  print(twenty.runtimeType);

  //double para String:

  var pi = 3.14316.toStringAsFixed(2);
  print(pi);
  print(pi.runtimeType);


}
