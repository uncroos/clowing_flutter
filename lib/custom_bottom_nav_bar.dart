import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomBottomNavBar({required this.currentIndex, required this.onTap});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.checkroom_outlined),
          label: '옷장',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_laundry_service),
          label: '세탁',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.checkroom),
          label: '룩북',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '추천',
        ),
      ],
      currentIndex: widget.currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: widget.onTap,
    );
  }
}
