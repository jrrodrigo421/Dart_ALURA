import 'package:projeto_inicial/MathCircle.dart';

void main(){
  double myPi = MathCircle.pi;
  // double myRadius = MathCircle.myRadius // erro pois myRadius é um informação de instancia

  //usando metodo para calcular a area do circulo
  MathCircle myCircle = MathCircle(3);
  double myArea = myCircle.circleArea();
  double myRadius = myCircle.myRadius;

  print('myCircle $myCircle');
  print('myArea $myArea');
  print('myRadius $myRadius');
  print('myCircle $myCircle');

  //Usando metodo estatico para calcular a area do circulo
  myArea = MathCircle.staticCircleArea(3);

  print('myArea $myArea');

}