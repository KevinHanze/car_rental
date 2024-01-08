import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:developer';
import '../models/car.dart' as car;
import '../models/car.dart';


class Apiservice {

  String BaseUrl = "https://leech-safe-rat.ngrok-free.app";

  Future<String?> login(String username, String password, bool remember) async {
    try {
        var url = Uri.parse("$BaseUrl/api/authenticate");
        var response = await http.post(url,
            headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
            body: jsonEncode({"username" : username, "password" : password, "rememberMe" : remember}));
        if(response.statusCode == 200) {
          var jsonData = jsonDecode(response.body);
          return jsonData["id_token"];
        }
        if(response.statusCode == 401) {
          return("password or username incorrect");
        }
        return("error something went wrong");
    }
    catch(e) {
      log(e.toString());
    }
  }

  Future<dynamic> getCars() async {
    final response = await http.get(Uri.parse("$BaseUrl/api/cars"));
    List<car.Car>  cars = [];

    if(response.statusCode == 200 ){
    final json = jsonDecode(response.body);
    for(var car in json) {
       Car newCar = Car(car);
       cars.add(newCar);
    }
    return cars;
    }
  }
}
