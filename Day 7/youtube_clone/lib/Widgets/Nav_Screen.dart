import 'package:flutter/material.dart';
import 'package:youtube_clone/Screens/HomeScreen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _currentindex = 0;
  final Pages = [
    Homescreen(),
    const Scaffold(
      body: Center(
        child: Text("Explore"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("Add"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("Subscriptions"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("Library"),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: Pages.asMap()
            .map((i, screen) => MapEntry(
                  i,
                  Offstage(
                    offstage: _currentindex != i,
                    child: screen,
                  ),
                ))
            .values
            .toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
          onTap: (value) {
            setState(() {
              _currentindex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                activeIcon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore_outlined,
                ),
                activeIcon: Icon(Icons.explore),
                label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                ),
                activeIcon: Icon(Icons.add_circle),
                label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.subscriptions_outlined,
                ),
                activeIcon: Icon(Icons.subscriptions),
                label: "Subscriptions"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_library_outlined,
                ),
                activeIcon: Icon(Icons.video_library),
                label: "Library"),
          ]),
    );
  }
}
