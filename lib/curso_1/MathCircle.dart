class MathCircle{
  static const double pi = 3.1415;
  late double myRadius;

  MathCircle(this.myRadius);

  double circleArea(){
    return pi * (myRadius * myRadius);
  }
  static double staticCircleArea(double radius){
    return pi * (radius * radius);
  }

  //Não conseguimos acessar propriedades de instâncias em métodos estáticos.
  // static double staticCircleAreaWrong(){
  //   return pi * (myRadius * myRadius); // gera erro
  // }
}