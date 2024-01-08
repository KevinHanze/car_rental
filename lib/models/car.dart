import 'dart:ffi';

class Car {
  late final int id;
  late final String brand;
  late final String model;
  late final String fuel;
  late final String options;
  late final String licensePlate;
  late final int engineSize;
  late final int modelYear;
  late final String since;
  late final double price;
  late final int nrOfSeats;
  late final String body;


  Car(Map<String, dynamic>data) {
    id = data['id'];
    brand = data['brand'];
    model = data['model'];
    fuel = data['fuel'];
    options = data['options'];
    licensePlate = data['licensePlate'];
    engineSize = data['engineSize'];
    modelYear = data['modelYear'];
    since = data['since'];
    price = data['price'];
    nrOfSeats = data['nrOfSeats'];
    body = data['body'];
  }

  @override
  String toString() {
    return("id: $id\nbrand: $brand\nmodel: $model\nfuel: $fuel\noptions: $options\nlicensePlate: $licensePlate"
           "\nengineSize: $engineSize\nmodelYear: $modelYear\nsince: $since\nprice: $price\nnrOfSeats: $nrOfSeats\nbody: $body");

  }

}