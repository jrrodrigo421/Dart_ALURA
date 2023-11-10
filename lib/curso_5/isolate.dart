import 'dart:isolate';
import 'dart:math';

/*
Vejamos alguns exemplos isolados do Flutter.
A primeira maneira de criar um isolamento é usando a chamada.
Passamos o método que queremos executar como o primeiro parâmetro,
enquanto o segundo argumento é o parâmetro que queremos passar para o isolado.Isolate.spawn()

A função passada para o isolado deve ser uma função de nível superior *
 (uma função que não está dentro do limite de uma classe) ou um método estático.spawn()
 */

void main (){
  print(heavyTask.runtimeType);
  Isolate.spawn<IsolateModel>(heavyTask,IsolateModel(iteration: 350000, multiplier: 300));
}

void heavyTask(IsolateModel model){
  int total = 0;

  for(int i = 1; i < model.iteration; i++){
    total += (i * model.multiplier);
  }
  print('FINAL TOTAL $total');
  log(total);
}

class IsolateModel{
  final int iteration;
  final int multiplier;

  IsolateModel({required this.iteration, required this.multiplier});
}