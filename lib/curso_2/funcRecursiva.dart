main(){
  funRecursiva(2, 100);
}

//Se a função imprime algo e depois chama ela mesma, ela vai fazer isso indefinidamente, até gerar um erro que indica
// que o programa excedeu a quantidade máxima de chamadas recursivas definida pelo Sistema
// Operacional (o lendário StackOverflowException).


// funRecursiva(){
//   print('hellooo');
//   funRecursiva();
// }

funRecursiva(int contador, int condicaoParada){
  print('Estamos a $contador itereções sem StackOverFlow');
  if (contador >= condicaoParada) {
    return;
  }
  funRecursiva(contador + 1, condicaoParada);
}