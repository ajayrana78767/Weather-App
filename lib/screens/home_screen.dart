// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("WeatherApp"),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blue.shade900, Colors.blue.shade300],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Container(
//                 padding: EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.8),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Column(
//                   children: [
//                     Text("Current Weather", style: TextStyle(fontSize: 22)),
//                     Text("Sunny, 25°C", style: TextStyle(fontSize: 32)),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             Expanded(
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 7,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     width: 100,
//                     margin: EdgeInsets.symmetric(horizontal: 8),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.9),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Center(
//                       child: Text("Day ${index + 1}"),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:weather_app/screens/setting_screen.dart';
import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Route createRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0, 1); // Start from the bottom
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "WeatherApp",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Home Screen Content",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.shade700,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blue.shade200,
        onTap: (index) {
          if (index == 1) {
            Navigator.of(context).push(createRoute(const SearchScreen()));
          } else if (index == 2) {
            Navigator.of(context).push(createRoute(const SettingsScreen()));
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }

}
