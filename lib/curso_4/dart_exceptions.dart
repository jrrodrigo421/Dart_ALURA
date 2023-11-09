import 'package:projeto_inicial/curso_4/exception/bank_controller_exceptions.dart';
import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Rodrigo",
      account:
          Account(name: "Rodrigo Lopes", balance: 800, isAuthenticated: true));

  bankController.addAccount(
      id: "Gleice",
      account:
          Account(name: "Gleice Lopes", balance: 60000, isAuthenticated: true));

  try{
    // Fazendo transferência
     bool result = bankController.makeTransfer(
        idSender: "Rodrigo", idReceiver: "Gleice", amount: 700);

     if(result){
       // Observando resultado
       print('transação concluida com sucesso! ');
     }

  }on SenderIdInvalidException catch(e){
    print('O Id ${e.idSender} não esta cadastrado no banco de dados');
  }on ReceiverIdInvalidException catch(e){
    print('O Id ${e.idReceiver} nao esta cadastrado no banco de dados');
  }on SenderNotAuthenticatedException catch(e){
    print('O Id ${e.idSender} não esta autenticado');
  }on SenderBalanceLowerThanAmountException catch(e){
    print('O usuario do ID ${e.idSender}, tentou enviar ${e.amount}, mas só tinha ${e.senderBalance}');
  }on Exception{
    print('Algo deu errado! ');
  }
}


