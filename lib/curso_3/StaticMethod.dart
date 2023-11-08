main(){

  Viagem viagemHoje = Viagem();
  print(viagemHoje.dinheiro.toString());
  print(Viagem.codigo.toString());
  viagemHoje.printCodigo();

}
class Viagem{
  static String codigo = 'HSUAHS232';
  double dinheiro = 0;
  printCodigo(){
    print(codigo);
  }
}