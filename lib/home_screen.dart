import 'package:flutter/material.dart';

import 'TextInstructionsScreen.dart';
import 'main_image_screen.dart';
import 'my_camera_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 1);
  int _currentPageIndex = 1;

  final List<String> _titles = ['live camera', 'live chat', 'others camera'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(_titles[_currentPageIndex]),
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: const [
          MyCameraScreen(),
          MainImageScreen(),
          TextInstructionsScreen(),
        ],
      ),
    );
  }
}
