import 'dart:async';

Stream oneMinuteStream() async* {
  int i = 1;
  while (i <= 60) {
    print("You have: ${60 - i} seconds");
    await Future.delayed(Duration(seconds: 1));
    yield i++;
  }
}

StreamSubscription singleSubscriber = oneMinuteStream().listen((event) {
  if (event == 30) {
    print('Half of the time has passed!');
  }
}, onError: (e) {
  print('Something went wrong: $e');
},onDone: (){
  print('Leaving the Stream...');
});