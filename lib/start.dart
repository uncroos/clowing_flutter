import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_template.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 255, 255, 255), // Light blue background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 3), // More flexible space at the top
            Image.asset(
              'assets/images/start.png', // Replace with your logo image asset path
              width: 250,
              height: 250,
            ),
            SizedBox(height: 10), // Smaller space between image and text
            Text(
              '간편히 관리하는 나의 옷장',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF565656),
              ),
            ),
            Spacer(flex: 2), // Flexible space in between
          ],
        ),
      ),
    );
  }

  //kakao 버튼
  Widget getkakaoLoginButton() {
    return InkWell(
      onTap: () {
        // thing to do
        singInWihtKakao();
      },
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        elevation: 2,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(7),
          ), // BoxDecoration
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('', height: 30),
            const SizedBox(
              width: 10,
            ), // SizedBox
            const Text("Sign In With Kakao",
                style: TextStyle(color: Colors.white, fontSize: 17)) // Text
          ]), // Row
        ), // Container
      ), // Card
    ); // InkWell
  }

  Future<void> singInWihtKakao() async {
    if (await isKakaoTalkInstalled()) {
      try {
        await UserApi.instance.loginWithKakaoTalk();
        print('카카오톡으로 로그인 성공');
      } catch (error) {
        print('카카오톡으로 로그인 실패 $error');

        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException && error.code == 'CANCELED') {
          return;
        }
        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        try {
          await UserApi.instance.loginWithKakaoAccount();
          print('카카오계정으로 로그인 성공');
        } catch (error) {
          print('카카오계정으로 로그인 실패 $error');
        }
      }
    } else {
      try {
        await UserApi.instance.loginWithKakaoAccount();
        print('카카오계정으로 로그인 성공');
      } catch (error) {
        print('카카오계정으로 로그인 실패 $error');
      }
    }
  }
}
