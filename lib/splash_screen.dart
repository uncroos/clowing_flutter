import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF83ACE9), // Light blue color
      body: Center(
        child: Image.asset(
          'assets/images/logo_white.png', // Replace with your image asset path
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
