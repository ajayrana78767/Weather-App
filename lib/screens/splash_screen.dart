import 'package:flutter/material.dart';
import 'package:weather_app/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () async{
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  HomeScreen()),
      );
    });

    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud, size: 100, color: Colors.white),
            SizedBox(height: 20),
            Text(
              "WeatherApp",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'home_screen.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..repeat(reverse: true);

//     Future.delayed(Duration(seconds: 4), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => HomeScreen()),
//       );
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blue.shade700, Colors.blue.shade300],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ScaleTransition(
//                 scale: Tween(begin: 0.8, end: 1.2).animate(
//                   CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
//                 ),
//                 child: Icon(Icons.wb_sunny, size: 100, color: Colors.white),
//               ),
//               SizedBox(height: 20),
//               AnimatedTextKit(
//                 animatedTexts: [
//                   FadeAnimatedText(
//                     'WeatherApp',
//                     textStyle: TextStyle(
//                       fontSize: 30,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//                 isRepeatingAnimation: false,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
