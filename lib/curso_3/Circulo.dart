main(){
  // print(Circulo.pi); >> certo

  // Circulo circulo = Circulo(2);
  // print(circulo.raio);   >>> certo

  // Circulo circulo = Circulo(2);
  // print(Circulo.pi); >>certo

  // print(Circulo.raio); >>> errado

  // Circulo circulo = Circulo(2);
  // print(circulo.pi);  >>> errado

  var retornoCirculo = Circulo.AreaStatic(3);
  print(retornoCirculo);

}


class Circulo{
  static double pi = 3.1415;
  double raio;

  Circulo(this.raio);

  double Area(){
    return pi * raio * raio;
  }

  //tambem temos metodo estatico :

  static double AreaStatic(double raioParam){
    return pi * raioParam * raioParam;
  }
}