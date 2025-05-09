import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String username;

  const ChatScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(username)),
      body: Column(
        children: [
          const Expanded(child: Center(child: Text("Belum ada pesan."))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: "Tulis pesan..."),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    // Implement kirim pesan
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
