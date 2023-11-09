// import 'controllers/bank_controller.dart';
// import 'models/account.dart';
//
// void main() {
//   // Criando o banco
//   BankController bankController = BankController();
//
//   // Adicionando contas
//   bankController.addAccount(
//       id: "Rodrigo",
//       account:
//           Account(name: "Rodrigo Lopes", balance: 5000, isAuthenticated: true));
//
//   bankController.addAccount(
//       id: "Gleice",
//       account:
//           Account(name: "Gleice Lopes", balance: 60000, isAuthenticated: true));
//
//   // Fazendo transferência
//   bool result = bankController.makeTransfer(
//       idSender: "Kako", idReceiver: "Ricarth", amount: 700);
//
//   // Observando resultado
//   print(result);
// }


// Tema : tratamento de exceção testando  coneceito de pilha de execução :

main(){
  print('Started Main');
  functionOne();
  print('finish Main');
}

void functionOne() {
  print('Started FunctionONe');
  functionTwo();
  print('finalized functionOne');
}

void functionTwo() {
  print('Started functionTWO');
  for(int i = 0; i <= 5 ; i++){
    print('VEZ $i');
  }
  print('finish functionTWO');
}

