import 'package:flutter/material.dart';

class WeatherDetailsScreen extends StatelessWidget {
  final String day;
  final String weather;
  final int highTemp;
  final int lowTemp;

  WeatherDetailsScreen({super.key, 
    required this.day,
    required this.weather,
    required this.highTemp,
    required this.lowTemp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$day Details"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.wb_sunny, size: 100, color: Colors.orange),
            const SizedBox(height: 20),
            Text(
              "$weather",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text("High: $highTemp°C", style: const TextStyle(fontSize: 20)),
            Text("Low: $lowTemp°C", style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
