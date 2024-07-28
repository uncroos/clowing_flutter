import 'package:clowing_flutter/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 옷장', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false, // 뒤로 가기 버튼 삭제
      ),
      backgroundColor: Colors.white, // Scaffold의 배경색을 흰색으로 설정
      body: Row(
        children: [
          // Side navigation menu with text only
          Column(
            children: [
              TextButton(
                onPressed: () {
                  // Handle "상의" selection
                },
                child: Text('상의', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {
                  // Handle "하의" selection
                },
                child: Text('하의', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {
                  // Handle "아우터" selection
                },
                child: Text('아우터', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {
                  // Handle "신발" selection
                },
                child: Text('신발', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {
                  // Handle "가방" selection
                },
                child: Text('가방', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {
                  // Handle "패션소품" selection
                },
                child: Text('패션소품', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          VerticalDivider(thickness: 1, width: 1),
          // Main content
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle add clothing item
                    },
                    child: Text('상의 추가하기'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 0, // Adjust according to the tab index
        onTap: (index) {
          // Handle bottom navigation bar tap
        },
      ),
    );
  }

  Widget _buildClothingItem(String title, String imagePath) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(imagePath),
        ),
        Text(title),
      ],
    );
  }
}
