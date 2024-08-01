import 'package:clowing_flutter/closet/closet_home_screen.dart';
import 'package:clowing_flutter/closet/addClothes/top_screen.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_user.dart';
import 'splash_screen.dart';
// LoginScreen 파일 import

void main() {
  //kakao
  // 웹 환경에서 카카오 로그인을 정상적으로 완료하려면 runApp() 호출 전 아래 메서드 호출 필요
  WidgetsFlutterBinding.ensureInitialized();

  // runApp() 호출 전 Flutter SDK 초기화
  KakaoSdk.init(
    nativeAppKey: 'e47a16bbc2de7f9bb684384b295bcd3c',
    javaScriptAppKey: '0630e9c5a052ae423cfc0c573f8ed152',
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
