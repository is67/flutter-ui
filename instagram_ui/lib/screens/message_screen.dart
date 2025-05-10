import 'package:flutter/material.dart';
import 'chat_screen.dart';
import '../widgets/message_tile.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Direct Messages'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ChatScreen()),
              );
            },
            child: MessageTile(
              username: 'User $index',
              lastMessage: 'Hey, how are you?',
              time: '${index + 1}h',
            ),
          );
        },
      ),
    );
  }
}
