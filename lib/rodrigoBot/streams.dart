import 'dart:async';
import 'dart:math';

void main() async {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print("Counting: $i");
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print("Stream is finish");
  }

  var testeStream = myStream(1).asBroadcastStream();

  testeStream.map((event) => 'Subscriber 2 watching: $event').listen(print);


  StreamSubscription mySubscriber = testeStream.listen((event) {
    if (event.isEven) {
      print('é PAR');
    } else {
      print('impar');
    }
  }, onError: (e) {
    print('Error $e');
  }, onDone: (){
    print('is Done');
  });

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('Stream pause');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('Stream resumo');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('Stream cancel');
  

  print('Main is FINISH');
}
