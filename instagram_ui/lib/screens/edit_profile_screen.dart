import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            TextField(decoration: InputDecoration(labelText: 'Name')),
            TextField(decoration: InputDecoration(labelText: 'Bio')),
          ],
        ),
      ),
    );
  }
}
