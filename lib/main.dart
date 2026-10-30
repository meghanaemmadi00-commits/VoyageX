import 'package:flutter/material.dart';
import 'screens/search_results_screen.dart';

void main() {
  runApp(const VoyageXApp());
}

class VoyageXApp extends StatelessWidget {
  const VoyageXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VoyageX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController dateController =
      TextEditingController();

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('VoyageX'),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      centerTitle: true,
    ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Explore the World ✈️',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text('Your journey starts here.'),
            const SizedBox(height: 25),
            const TextField(
              decoration: InputDecoration(
                labelText: 'From',
                hintText: 'Enter departure city',
                prefixIcon: Icon(Icons.location_on),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'To',
                hintText: 'Enter destination city',
                prefixIcon: Icon(Icons.flag),
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
  readOnly: true,
  controller: dateController,
  decoration: const InputDecoration(
    labelText: 'Travel Date',
    hintText: 'Select your travel date',
    prefixIcon: Icon(Icons.calendar_month),
    border: OutlineInputBorder(),
  ),
  onTap: () async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2028),
    );

    if (pickedDate != null) {
      dateController.text =
          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
    }
  },
),
            const SizedBox(height: 22),
            SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton.icon(
    onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const SearchResultsScreen(),
    ),
  );
},
    icon: const Icon(Icons.search),
    label: const Text(
      'Search Trips',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
),
            const SizedBox(height: 30),
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
                destinationCard('Goa', '🏖️'),
              ],
            ),
            Row(
              children: [
                destinationCard('Bengaluru', '🏙️'),
                destinationCard('Chennai', '🌊'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget destinationCard(String city, String emoji) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(emoji, style: const TextStyle(fontSize: 32)),
              const SizedBox(height: 8),
              Text(
                city,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
