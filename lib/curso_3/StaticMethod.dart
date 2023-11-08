main(){

  Viagem22 viagemHoje = Viagem22();
  print(viagemHoje.dinheiro.toString());
  print(Viagem22.codigo.toString());
  viagemHoje.printCodigo();

}
class Viagem22{
  static String codigo = 'HSUAHS232';
  double dinheiro = 0;
  printCodigo(){
    print(codigo);
  }
}