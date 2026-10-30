import 'package:flutter/material.dart';

class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Trips'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Choose Your Travel Option',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          travelCard(
            'Bus',
            'Hyderabad → Goa',
            '₹1,200',
            Icons.directions_bus,
          ),

          travelCard(
            'Train',
            'Hyderabad → Bengaluru',
            '₹850',
            Icons.train,
          ),

          travelCard(
            'Flight',
            'Hyderabad → Chennai',
            '₹3,500',
            Icons.flight,
          ),
        ],
      ),
    );
  }

  Widget travelCard(
      String type, String route, String price, IconData icon) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      child: ListTile(
        leading: Icon(icon, color: Colors.blue, size: 35),
        title: Text(
          type,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(route),
        trailing: Text(
          price,
          style: const TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}