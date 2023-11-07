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
  
  //listas:
  
  List<String> lista =['Rodrigo', 'Adriana', 'irene', 'benedito', 'catiane', 'flavio'];
  print(lista);
  print(lista.length);

  print(lista[1]);

  //lista dinamica

  List<dynamic> rodrigo = ['Rodrigo Lopes', 1.84, 30];
  print('imprimindo lista ${rodrigo[2]}');

  //seguindo o artigo
  // https://codeburst.io/top-10-array-utility-methods-you-should-know-dart-feb2648ee3a2

  //forEach() executa uma função em cada elemento da lista
  var fruits = ['maça', 'laranja', 'manga'];
  fruits.forEach((fruit) => print(fruit));

  //map() Produz uma nova lista depois de
  // transformar cada elemento em uma determinada lista
  var mappedFruits  = fruits.map((fruit) => 'Teste $fruit').toList();
  print(mappedFruits);

  //contains Verifica se o elemento fornecido está na lista
  print(fruits.contains('laranja'));

  // sort() Ordene os elementos com base na função de ordenação fornecida

  List<int> numeros = [1,3,2,5,4];
  numeros.sort((num1, num2) => (num1 - num2));
  print(numeros);

  // reduce() &  fold() Comprime os elementos para um único valor,
  // usando a função fornecida

  var sum = numeros.reduce((value, element) => value + element);
  print(sum);

  var initialValue = 10 ;
  var sum2 = numeros.fold(initialValue, (previousValue, element) => previousValue + element);
  print(sum2);

  // every() Confirma que todos os elementos satisfazem o teste

  List<Map<String, dynamic>> users  = [
    {"name": 'RodrigoJr', "age": 30},
    {"name": 'Rodrigo', "age": 50},
    {"name": 'RAdriana', "age": 50},
  ];

  var is18AndOver = users.every((element) => element["age"]>=18);
  print(is18AndOver);
  var hasNamesWithR = users.every((element) => element["name"].startsWith('R'));
  print(hasNamesWithR);

  // where() , firstWhere(), singleWhere()
  // Retorna uma coleção de elementos que satisfazem um teste.

  var over21s = users.where((element) => element["age"] > 21);
  print(over21s.length);

  var nameR = users.firstWhere((element) => element["name"].startsWith('R'), orElse: () =>
  {"name": '', "age": 0});
  print(nameR);

  List<Map<String, dynamic>> users2  = [
    {"name": 'RodrigoJr', "age": 30},
    {"name": 'Rodrigo', "age": 50},
    {"name": 'RAdriana', "age": 50},
  ];

  var under18s = users2.singleWhere((element) => element["age"] < 18, orElse: () => {"name": '', "age": 0});
  print(under18s);


  // take() skip()
  // Retorna uma coleção ao incluir ou ignorar elementos

  var fiboNumbers =[1, 2, 3, 5,8 ,13, 21];
  print(fiboNumbers.take(3).toList());
  print(fiboNumbers.skip(5).toList());
  print(fiboNumbers.take(3).skip(2).take(1));


  // List.from()
  // Cria uma nova lista a partir da coleção fornecida

  var clonedFiboNumbers = List.from(fiboNumbers);
  print('lista clonada: $clonedFiboNumbers');

  var pars = [[1,2], [3,4]];
  var flattened = pars.expand((element) => element.toList());
  print('Flattened result: $flattened');

  var input = [1, 2, 3];
  var duplicated = input.expand((element) => [element, element].toList());
  print(duplicated);


}


