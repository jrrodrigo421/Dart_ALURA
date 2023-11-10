/*
Uma maneira mais fácil de criar um novo isolado é usando ,
embora a compensação seja que você perde muito da flexibilidade oferecida.compute()Isolate.spawn()

compute<Q, R>() aceita dois tipos genéricos: é o tipo de parâmetro de função de isolamento e é
o tipo de retorno da função de isolamento. O trecho de código abaixo mostra como implementar isso.QR
 */

//sem dependencia do flutter aqui por enquanto...
  // import 'package:flutter/foundation.dart';
  //
  //
  // void main() {
  //   compute<IsolateModel, void>(heavyTask, IsolateModel(355000, 500));
  // }
  //
  // void heavyTask(IsolateModel model) {
  //   int total = 0;
  //
  //   /// Performs an iteration of the specified count
  //   for (int i = 1; i < model.iteration; i++) {
  //
  //     /// Multiplies each index by the multiplier and computes the total
  //     total += (i * model.multiplier);
  //   }
  //
  //   print("FINAL TOTAL: $total");
  // }
  //
  // class IsolateModel {
  //   IsolateModel(this.iteration, this.multiplier);
  //
  //   final int iteration;
  //   final int multiplier;
  // }
  //
  //
