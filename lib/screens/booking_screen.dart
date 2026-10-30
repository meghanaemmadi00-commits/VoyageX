import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Details'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Passenger Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Passenger Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 16),

            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Age',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.cake),
              ),
            ),

            const SizedBox(height: 16),

            const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Confirm Booking'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}