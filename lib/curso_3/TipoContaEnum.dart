void main(){
  TipoConta.tiposContaAtivos();
  TipoConta.corrente;
  print(TipoConta.corrente);
}

enum TipoConta {
  salario, poupanca, corrente, investimentos;

   static void tiposContaAtivos(){
    print('salario, poupanca, corrente, investimentos');
  }
}

