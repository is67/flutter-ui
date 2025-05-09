import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/profile_1.jpg'),
      ),
      title: const Text(
        "friend_username",
        style: TextStyle(color: Colors.white),
      ),
      subtitle: const Text(
        "Sent a photo",
        style: TextStyle(color: Colors.grey),
      ),
      trailing: const Text("1h", style: TextStyle(color: Colors.grey)),
    );
  }
}
