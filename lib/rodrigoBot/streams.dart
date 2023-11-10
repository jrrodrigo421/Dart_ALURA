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


/*
Methods that process a stream
The following methods on Stream<T> process the stream and return a result:

Future<T> get first;
Future<bool> get isEmpty;
Future<T> get last;
Future<int> get length;
Future<T> get single;
Future<bool> any(bool Function(T element) test);
Future<bool> contains(Object? needle);
Future<E> drain<E>([E? futureValue]);
Future<T> elementAt(int index);
Future<bool> every(bool Function(T element) test);
Future<T> firstWhere(bool Function(T element) test, {T Function()? orElse});
Future<S> fold<S>(S initialValue, S Function(S previous, T element) combine);
Future forEach(void Function(T element) action);
Future<String> join([String separator = '']);
Future<T> lastWhere(bool Function(T element) test, {T Function()? orElse});
Future pipe(StreamConsumer<T> streamConsumer);
Future<T> reduce(T Function(T previous, T element) combine);
Future<T> singleWhere(bool Function(T element) test, {T Function()? orElse});
Future<List<T>> toList();
Future<Set<T>> toSet();
 */