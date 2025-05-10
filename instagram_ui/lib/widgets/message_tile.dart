import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final String username;
  final String lastMessage;
  final String time;

  const MessageTile({
    Key? key,
    required this.username,
    required this.lastMessage,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage('assets/images/profile_1.jpg'),
      ),
      title: Text(username),
      subtitle: Text(lastMessage, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Text(
        time,
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
      onTap: () {
        // Navigasi ke halaman chat bisa ditambahkan di sini
      },
    );
  }
}
