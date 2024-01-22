import 'package:flutter/material.dart';
import 'package:flutter_batch_1/profile_page.dart';

import 'feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List _pages = [
    //0
    const FeedPage(),

    //1
    const Text("Message page"),

    //2
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Center(
        // _pages[_currentIndex]
        child: _pages.elementAt(_currentIndex),
      ),

      //
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          //0
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Feed"),
          //1
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          //2
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

///  Bottom sheet
/// floating action
/// snack bar
/// drawer
/// bottom sheet (hw)
///
