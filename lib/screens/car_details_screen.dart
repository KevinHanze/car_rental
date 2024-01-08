import 'package:car_rental/screens/booking_screen.dart';
import 'package:flutter/material.dart';

class CarDetailsScreen extends StatelessWidget {
  // final Car car;

  // CarDetailsScreen({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Car image
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/exterior-4.png"),
                  fit: BoxFit.cover,
                ),
              ),
              // padding: EdgeInsets.all(24.0), // Increased padding for more space
            ),

            // Car details
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Vehicle brand and model
                  Text(
                    "Toyota Aygo",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Other details in two columns
                  _buildDetailRow("Fuel", "Gasoline"),
                  _buildDetailRow("Engine Size", "20cl"),
                  _buildDetailRow("Model Year", "2023"),
                  _buildDetailRow("Price", "23"),
                  _buildDetailRow("Number of Seats", "5"),
                  _buildDetailRow("Body", "Pickup"),
                  _buildDetailRow("Options", "Wifi bro"),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Change the button color here
                  onPrimary: Colors.white, // Change the text color here
                  padding: EdgeInsets.all(16.0),
                ),
                child: Text(
                  'Book Now',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Text(
                '\$27 p/day',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange, // Match the button color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
