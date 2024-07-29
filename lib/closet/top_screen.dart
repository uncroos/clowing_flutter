import 'package:flutter/material.dart';
import 'package:clowing_flutter/custom_bottom_nav_bar.dart';

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
          Container(
            color: Colors.grey[200],
            width: 100,
            child: Column(
              children: [
                _buildSideMenuItem('상의', true), // true for the selected item
                _buildSideMenuItem('하의', false),
                _buildSideMenuItem('아우터', false),
                _buildSideMenuItem('신발', false),
                _buildSideMenuItem('가방', false),
                _buildSideMenuItem('패션소품', false),
              ],
            ),
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
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.brown[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
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

  Widget _buildSideMenuItem(String title, bool isSelected) {
    return Container(
      color: isSelected ? Colors.grey[300] : Colors.grey[200],
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: TextButton(
        onPressed: () {
          // Handle item selection
        },
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
