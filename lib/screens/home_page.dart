import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/my_netflix_screen.dart';
import 'package:netflix_clone/screens/new_and_popular_screen.dart';
import 'package:netflix_clone/screens/main_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    MainPage(),
    NewAndPopularScreenPage(),
    MyNetflixScreenPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _tabs),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Colors.black,
        selectedLabelStyle: TextStyle(fontFamily: "Arial", fontSize: 12),
        unselectedLabelStyle: TextStyle(fontFamily: "Arial", fontSize: 12),
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: "Yeni ve Popüler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Benim Netflix'im",
          ),
        ],
      ),
    );
  }
}
