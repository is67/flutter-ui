import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        itemCount: 10,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          return Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'assets/images/profile_1.jpg',
                ),
              ),
              const SizedBox(height: 5),
              Text('User$index', style: const TextStyle(fontSize: 12)),
            ],
          );
        },
      ),
    );
  }
}
