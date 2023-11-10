//assincronimo:
void main() async {
  final result = await Future.delayed(Duration(seconds: 5));
  print(result);

  Future<int> myFutureFunc() async{
    await Future.delayed(Duration(seconds: 3));
    print('testeeeee');
    return 30;

  }
  print(myFutureFunc());

  Stream<int> timedCounter(int interval, [int? maxCount]) async* {
    int i = 1;
    while(i != maxCount){
      await Future.delayed(Duration(seconds: interval));
      //não printa ?
      print('dentro do loop do stream');
      yield i++;
    }
  }

  print(timedCounter(3,1000));
}