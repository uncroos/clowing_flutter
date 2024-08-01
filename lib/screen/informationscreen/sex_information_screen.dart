import 'package:clowing_flutter/screen/closetscreen/closet_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_template.dart';

class SexInfoScreen extends StatefulWidget {
  @override
  _SexInfoScreenState createState() => _SexInfoScreenState();
}

class _SexInfoScreenState extends State<SexInfoScreen> {
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
            ), // Smaller space between image and text
            Text(
              '간편히 관리하는 나의 옷장',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF565656),
              ),
            ),
            Spacer(flex: 1),
            getNextPage(),
            Spacer(flex: 2), // Flexible space in between
          ],
        ),
      ),
    );
  }

  //kakao 버튼
  Widget getNextPage() {
    return InkWell(
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        elevation: 2,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFF80ABEE),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 10),
              Image.asset(
                'assets/images/chat.png',
                height: 24, // 원하는 높이로 설정
                width: 24, // 원하는 너비로 설정
              ),
              const SizedBox(width: 10),
              const Text(
                "엉",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
