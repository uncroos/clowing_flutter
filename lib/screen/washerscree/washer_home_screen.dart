import 'package:clowing_flutter/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart'; // Import the custom bottom nav bar widget

class WasherHomeScreen extends StatefulWidget {
  @override
  _WasherHomeScreenState createState() => _WasherHomeScreenState();
}

class _WasherHomeScreenState extends State<WasherHomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Navigate to different screens based on the index
      // For now, it just changes the state and you can add navigation logic here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      appBar: AppBar(
        title: Text('새탁기', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false, // This removes the back button
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/washer.png', // Replace with your closet image asset path
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/top');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6E8C6F), // 박스 색상
                padding:
                    EdgeInsets.symmetric(horizontal: 40, vertical: 15), // 내부 패딩
                textStyle:
                    TextStyle(fontSize: 16, color: Colors.white), // 글씨 색상
                fixedSize: Size(330, 55), // 가로 및 세로 크기
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // 라운드
                ),
              ),
              child: Text(
                '세탁 관리하기',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
