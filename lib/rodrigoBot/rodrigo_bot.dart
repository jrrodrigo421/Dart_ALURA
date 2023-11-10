
import 'dart:io';

import 'package:projeto_inicial/rodrigoBot/questions/good_manners.dart';
import 'package:projeto_inicial/rodrigoBot/waiting_time.dart';

import '../rodrigoBot/questions/time_questions.dart';

void main() async {
  String rodrigoBot = 'rodrigoBot:\n';
  var a = true;
  String usuario = '';

  var myStream =  BotClock().rodBotStream(1,10);
  var subscriber =  myStream.listen((event) {
    print('               rodbotStream activated is $event seconds');
  }, onDone:  (){
    print('rodBotStream finish');
    a = false;
  });

  print('-- Iniciando o rodrigoBot, aguarde..--');

  await BotClock().clock(4);

  print('rodrigoBot:\n Oi :) \n Como posso ajudar?');
  do {

    usuario = stdin.readLineSync().toString();

    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(2);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(rodrigoBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
    } else if (GoodManners(usuario).isThisManners()) {
      //Basta adicionar novas perguntas aqui!
      GoodManners(usuario).goodManners();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(2);
      print(rodrigoBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(rodrigoBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando rodrigoBot--');
  await BotClock().clock(2);

}
