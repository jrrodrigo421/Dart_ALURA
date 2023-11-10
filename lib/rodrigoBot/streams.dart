import 'dart:async';
import 'dart:math';

void main() {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print("Counting: $i");
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print("Stream is finish");
  }

  StreamSubscription mySubscriber = myStream(2, 10).listen((event) {
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
  print('Main is FINISH');
}
