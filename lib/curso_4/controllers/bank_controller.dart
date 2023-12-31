import 'package:projeto_inicial/curso_4/exception/bank_controller_exceptions.dart';

import '../models/account.dart';

class BankController {
  final Map<String, Account> _database = {};

  addAccount({required String id, required Account account}) {
    _database[id] = account;
  }

  bool makeTransfer(
      {required String idSender,
      required String idReceiver,
      required double amount}) {

    //throw FormatException();// teste para aparecer a msg de Exception "Algo deu errado "

    // Verificar se ID de remetente é válido
    if (!verifyId(idSender)) {
      // return false;
      throw SenderIdInvalidException(idSender: idSender);
    }


    // Verificar se ID de destinatário é válido
    if (!verifyId(idReceiver)) {
      // return false;
      throw ReceiverIdInvalidException(idReceiver: idReceiver);
    }
    Account accountSender = _database[idSender]!;
    Account accountReceiver = _database[idReceiver]!;

    // Verificar se o remetente está autenticado
    if (!accountSender.isAuthenticated) {
      // throw SenderNotAuthenticatedException(idSender: idSender);
      throw SenderNotAuthenticatedException(idSender: idSender);
    }
    if (!accountReceiver.isAuthenticated){
      throw ReceiverNotAuthenticatedException(idReceiver: idReceiver);
    }

    // Verificar se o remetente possui saldo suficiente
    if (accountSender.balance < amount) {
      throw SenderBalanceLowerThanAmountException(
        idSender: idSender,
        senderBalance: accountSender.balance,
        amount: amount
      );
    }

    // Se tudo estiver certo, efetivar transação
    accountSender.balance -= amount;
    accountReceiver.balance += amount;

    return true;
  }

  bool verifyId(String id) {
    return _database.containsKey(id);
  }
}

