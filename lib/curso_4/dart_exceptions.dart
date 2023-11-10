import 'dart:math';

import 'package:projeto_inicial/curso_4/exception/bank_controller_exceptions.dart';
import 'controllers/bank_controller.dart';
import 'models/account.dart';

void testingNullSafaty(){
  Account? account;

  //Simulando comunicação externa:
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  print(randomNumber);
  if(randomNumber <= 5){
    account = Account(name: 'RodriguinhoJr', balance: 100000, isAuthenticated: true);
  }
  print(account.runtimeType);

  // print(account.balance);
  // print(account!.balance);

  // if(account != null){
  //   print(account.balance);
  // }else{
  //   print('conta nula');
  // }

  //operador ternario
  // print(account != null ? account.balance : "conta Nula");

  print(account?.balance);
}

void main() {

  testingNullSafaty();

  //testando assert
  // assert(1>2, 'testando assert');


  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas

  Account accountTest = Account(name: "testse", balance: 200, isAuthenticated: true);
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
        idSender: "Rodrigo", idReceiver: "RodriguinhoJr", amount: 500);

     if(result){
       // Observando resultado
       print('transação concluida com sucesso! ');
     }

  }on SenderIdInvalidException catch(e){
    print(e);
    print('O Id ${e.idSender} não esta cadastrado no banco de dados');
  }on ReceiverIdInvalidException catch(e){
    print(e);
    print('O Id ${e.idReceiver} nao esta cadastrado no banco de dados');
  }on SenderNotAuthenticatedException catch(e){
    print(e);
    print('O Id ${e.idSender} não esta autenticado');
  }on ReceiverNotAuthenticatedException catch(e){
    print('o Id ${e.idReceiver} não esta autenticado');
  }
  on SenderBalanceLowerThanAmountException catch(e){
    print(e);
    print('O usuario do ID ${e.idSender}, tentou enviar ${e.amount}, mas só tinha ${e.senderBalance}');
  }on Exception{
    print('Algo deu errado! ');
  }
}


