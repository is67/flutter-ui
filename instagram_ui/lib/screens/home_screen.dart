import 'package:flutter/material.dart';
import '../widgets/story_widget.dart';
import '../widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(fontFamily: 'Billabong', fontSize: 32),
        ),
        actions: const [Icon(Icons.send)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            StoryWidget(),
            Divider(),
            PostWidget(
              username: "john_doe",
              userImage: "https://i.pravatar.cc/150?img=3",
              postImage: "https://source.unsplash.com/random/800x600",
              caption: "A beautiful day!",
            ),
            PostWidget(
              username: "jane_doe",
              userImage: "https://i.pravatar.cc/150?img=5",
              postImage: "https://source.unsplash.com/random/800x601",
              caption: "Chillin' 🧃",
            ),
          ],
        ),
      ),
    );
  }
}
