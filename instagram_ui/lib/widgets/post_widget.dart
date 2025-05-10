import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String username;
  final String imageUrl;
  final String caption;

  const PostWidget({
    Key? key,
    required this.username,
    required this.imageUrl,
    required this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(title: Text(username)),
        Image.network(imageUrl),
        Padding(padding: const EdgeInsets.all(8.0), child: Text(caption)),
      ],
    );
  }
}
