import 'package:clowing_flutter/screen/closetscreen/closet_home_screen.dart';
import 'package:clowing_flutter/screen/closetscreen/addClothes/top_screen.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_user.dart';
import 'screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase 초기화
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Kakao SDK 초기화
  KakaoSdk.init(
    nativeAppKey: 'YOUR_NATIVE_APP_KEY',
    javaScriptAppKey: 'YOUR_JAVASCRIPT_APP_KEY',
  );

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
