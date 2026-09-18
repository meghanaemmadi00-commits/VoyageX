import 'package:flutter/material.dart';

void main() {
  runApp(const VoyageXApp());
}

class VoyageXApp extends StatelessWidget {
  const VoyageXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VoyageX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'VoyageX',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 20),

            const Text(
              'Plan Your Journey ✈️',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Book your travel easily with VoyageX',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            // From
            TextField(
              decoration: InputDecoration(
                labelText: 'From',
                hintText: 'Enter departure city',
                prefixIcon: const Icon(Icons.location_on),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // To
            TextField(
              decoration: InputDecoration(
                labelText: 'To',
                hintText: 'Enter destination city',
                prefixIcon: const Icon(Icons.location_on),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Date
            TextField(
              decoration: InputDecoration(
                labelText: 'Travel Date',
                hintText: 'Select your travel date',
                prefixIcon: const Icon(Icons.calendar_month),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Search button
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  print('Search clicked');
                },
                child: const Text(
                  'Search Trips',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 35),

            const Text(
              'Popular Destinations',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                destinationCard('Hyderabad', '🌆'),
                destinationCard('Bengaluru', '🏙️'),
              ],
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                destinationCard('Goa', '🏖️'),
                destinationCard('Chennai', '🌊'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget destinationCard(String name, String emoji) {
    return Expanded(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                emoji,
                style: const TextStyle(fontSize: 35),
              ),
              const SizedBox(height: 8),
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}