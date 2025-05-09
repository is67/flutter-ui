import 'package:flutter/material.dart';
import 'chat_screen.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = List.generate(10, (index) => 'User $index');

    return Scaffold(
      appBar: AppBar(title: const Text('Messages')),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/150?img=${index + 20}",
              ),
            ),
            title: Text(messages[index]),
            subtitle: const Text('Hello!'),
            trailing: const Icon(Icons.camera_alt_outlined),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChatScreen(username: messages[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
