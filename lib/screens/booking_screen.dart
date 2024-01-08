import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTime? fromDate;
  DateTime? toDate;

  Future<void> _selectDate(BuildContext context, bool isFromDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );

    if (picked != null && picked != (isFromDate ? toDate : fromDate)) {
      setState(() {
        if (isFromDate) {
          fromDate = picked;
        } else {
          toDate = picked;
        }
      });
    }
  }

  String _getDateText(DateTime? date) {
    return date != null
        ? '${date.day}/${date.month}/${date.year}'
        : 'Select Date';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Now'),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () => _selectDate(context, true),
            child: Text('From Date: ${_getDateText(fromDate)}'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () => _selectDate(context, false),
            child: Text('To Date: ${_getDateText(toDate)}'),
          ),
          SizedBox(height: 32.0),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                // Implement booking logic here
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
          ),
        ],
      ),
    );
  }
}
