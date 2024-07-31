import 'package:flutter/material.dart';
import 'package:clowing_flutter/custom_bottom_nav_bar.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('내 옷장', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0), // 원하는 만큼 패딩 조절
            child: Container(
              height: 50.0, // 원하는 높이로 설정
              decoration: BoxDecoration(
                color: const Color(0xFFF1E5DB), // 검색 바 배경색
                borderRadius: BorderRadius.circular(8.0), // 모서리 둥글게
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: _searchController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '검색어 입력',
                          hintStyle: TextStyle(color: Colors.black45),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Icon(Icons.search, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 90,
              height: 500, // 필요한 만큼 높이를 늘립니다.
              padding: const EdgeInsets.only(left: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSideMenuItem('상의', true),
                  _buildSideMenuItem('하의', false),
                  _buildSideMenuItem('아우터', false),
                  _buildSideMenuItem('신발', false),
                  _buildSideMenuItem('가방', false),
                  _buildSideMenuItem('패션 소품', false),
                ],
              ),
              // 컨테이너의 색상을 지정
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            // This Expanded widget will make the content fill the available space.
            child: Row(
              children: [
                // Side navigation menu with text only
                VerticalDivider(thickness: 1, width: 1),
                // Main content
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            children: [], // Your grid items here
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('상의 추가하기'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.brown[200],
                              textStyle: TextStyle(
                                  // Apply textStyle here
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17),
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
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle bottom navigation bar tap
        },
      ),
    );
  }

  Widget _buildSideMenuItem(String title, bool isSelected) {
    return Container(
      color: isSelected ? const Color(0xFFEBEBEB) : Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {
            // Handle item selection
          },
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.black : const Color(0xFF787878),
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
