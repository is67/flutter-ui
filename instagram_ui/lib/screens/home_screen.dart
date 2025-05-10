import 'package:flutter/material.dart';
import 'search_screen.dart';
import 'like_screen.dart';
import 'profile_screen.dart';
import '../widgets/story_widget.dart';
import '../widgets/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeFeed(),
    SearchScreen(),
    LikeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

class HomeFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        StoryWidget(),
        PostWidget(
          username: "john_doe",
          imageUrl: "assets/images/profile_1.jpg",
          caption: "Caption example",
        ),
        PostWidget(
          username: "jane_doe",
          imageUrl: "assets/images/profile_1.jpg",
          caption: "Another caption",
        ),
      ],
    );
  }
}
