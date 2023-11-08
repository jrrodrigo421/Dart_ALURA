
void main(){
  List<int> numeros =  [0,2,3];
  print(numeros);
  numeros.addAll([4,5,6]);
  print(numeros);

  var sublist = numeros.getRange(1, 3);
  print(sublist);
  print(sublist.runtimeType);

  List<int> listSublista  = numeros.toList();
  print(listSublista);
  print(listSublista.runtimeType);

}