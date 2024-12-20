import 'package:flutter/material.dart';

class WeatherHomeScreen extends StatelessWidget {
  const WeatherHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Current Location"),
            Icon(Icons.search),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Current Weather Section
            Center(
              child: Column(
                children: [
                  const Icon(Icons.wb_sunny, size: 100, color: Colors.orange),
                  const SizedBox(height: 8),
                  const Text("25°C",
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
                  Text("Sunny",
                      style: TextStyle(fontSize: 24, color: Colors.grey[600])),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Hourly Forecast
            const Text("Hourly Forecast",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(10, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Text("${index + 1} PM"),
                        const Icon(Icons.wb_sunny, size: 40, color: Colors.orange),
                        const Text("25°C"),
                      ],
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 24),

            // Weekly Forecast
            const Text("Weekly Forecast",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading:
                          const Icon(Icons.wb_sunny, color: Colors.orange, size: 40),
                      title: Text("Day ${index + 1}"),
                      subtitle: const Text("High: 28°C | Low: 18°C"),
                      trailing: const Text("Sunny"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
