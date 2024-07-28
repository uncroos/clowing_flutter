import 'package:clowing_flutter/closet/closet_home_screen.dart';
import 'package:clowing_flutter/closet/top_screen.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';
// LoginScreen 파일 import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Closet App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/top': (context) => TopScreen(),
      },
    );
  }
}
