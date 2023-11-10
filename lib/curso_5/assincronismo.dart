//assincronimo:
void main() async {
  final result = await Future.delayed(Duration(seconds: 5));
  print(result);
}