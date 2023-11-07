void main(){

  //tipos de metododos que usamos em list tbm :

  List<String> list = ['Rodrigo', 'Pereira', 'Lopes', 'Junior'];
  //sublist start inclusivo o end e exclusivo
  List<String> novaLista = list.sublist(1, 2);
  print(novaLista);

  //foreach:

  list.forEach((element) {
    print(element);
  });

  //intellij sugeriu o for ao invés do forEach mas deu na mesma o console.
  for (var element in list) {
    print(element);
  }

  //contains, ver se tem na lista ou não:
  String procurando = 'Lopes';
  if(list.contains(procurando)){
    print('Contem Lopes');
  }else{
    print('Não contem silva');
  }

  print(!list.contains('teste'));
  
  //Reduce reduz uma lista para uma string
  String myName =  list.reduce((value, element){
    return "$value $element";
  });

  print(myName);
  print(list);

  //WHERE: pegar algum elemento baseado em uma condição:

  //podemos usar o iterable ou usar List mesmo e no final colocar o toList()
  Iterable<String> newLista =  list.where((element) => element.length > 6);
  print(newLista);
  print(newLista.toList());

  //ou podemos pegar o primeiro elemento que satisfaça a condição com firstWheew.

  String primeiroElemento = list.firstWhere((element) => element.length> 5);
  print(primeiroElemento);

}