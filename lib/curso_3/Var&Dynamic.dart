main(){
  var teste = 'teste';
//quando atribuimos o tipo de var ele não pode ser mudado.
// teste = 1;

// para essa mudança em "tempo de execução" do codigo temos o dynamic:

  dynamic teste2 = 7.1;
  print(teste2.runtimeType);
  teste2 = 'teste';
  print(teste2.runtimeType);

}