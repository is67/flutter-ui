import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=15"),
          ),
          const SizedBox(height: 10),
          const Text('john_doe', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
              ),
              itemCount: 12,
              itemBuilder:
                  (context, index) => Image.network(
                    "https://source.unsplash.com/random/200x200?sig=$index",
                    fit: BoxFit.cover,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
