import 'package:car_rental/screens/car_details_screen.dart';
import 'package:flutter/material.dart';




class Car {
  final String brand;
  final double price;
  final String imageUrl;

  Car({
    required this.brand,
    required this.price,
    required this.imageUrl,
  });
}

class HomeScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(brand: 'Toyota', price: 25000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Honda', price: 22000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Ford', price: 28000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Chevrolet', price: 30000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'BMW', price: 40000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Mercedes-Benz', price: 45000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Audi', price: 38000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Nissan', price: 24000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Hyundai', price: 20000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Kia', price: 21000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Tesla', price: 60000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Subaru', price: 27000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Volkswagen', price: 32000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Lexus', price: 48000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Mazda', price: 23000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Buick', price: 35000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Cadillac', price: 50000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Chrysler', price: 26000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Dodge', price: 29000.0, imageUrl: 'assets/exterior-4.png'),
    Car(brand: 'Jeep', price: 32000.0, imageUrl: 'assets/exterior-4.png'),
  ];

  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.width / 3; // 1/6 of the screen width

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[800], // Background color
              borderRadius: BorderRadius.circular(20.0), // Rounded edges
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: cars.map((car) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CarDetailsScreen(),
                    ),
                  );
                },
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: ListTile(
                    leading: Image.asset(
                      car.imageUrl,
                      width: imageHeight,
                      height: imageHeight,
                      fit: BoxFit.cover,
                    ),
                    title: Text(car.brand),
                    subtitle: Text('\$${car.price.toStringAsFixed(2)}'),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 1, // Set the default selected tab as Home
        onTap: (index) {
          // Handle bottom navigation bar item tap
          switch (index) {
            case 0:
            // Navigate to Maps screen
            // Add your navigation logic here
              break;
            case 1:
            // Stay on the Home screen (optional)
              break;
            case 2:
            // Navigate to Settings screen
            // Add your navigation logic here
              break;
          }
        },
      ),
    );
  }
}