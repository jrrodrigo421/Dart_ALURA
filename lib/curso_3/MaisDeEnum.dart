void main(){
  print(Vehicle.car.carbonFootprint);
  print(Vehicle.car.tires);
  print(Vehicle.car.passengers);

  /*
  O erro ocorre porque enums no Dart não suportam construtores gerados de forma personalizada.
   Os construtores gerados para enums são sempre constantes e não podem ser personalizados com parâmetros nomeados.
   */

  // Vehicle myCar = Vehicle(
  //   tires: 4,
  //   passengers: 5,
  //   carbonPerKilometer: 400,
  // );


}

enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);


  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}