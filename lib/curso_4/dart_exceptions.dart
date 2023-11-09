import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Rodrigo",
      account:
          Account(name: "Rodrigo Lopes", balance: 500, isAuthenticated: true));

  bankController.addAccount(
      id: "Gleice",
      account:
          Account(name: "Gleice Lopes", balance: 60000, isAuthenticated: true));

  // Fazendo transferência
  bool result = bankController.makeTransfer(
      idSender: "Rodrigo", idReceiver: "Gleice", amount: 700);

  // Observando resultado
  print('IMPRINDO result $result');
}


