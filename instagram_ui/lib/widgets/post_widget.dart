import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  final String username;
  final String userImage;
  final String postImage;
  final String caption;

  const PostWidget({
    super.key,
    required this.username,
    required this.userImage,
    required this.postImage,
    required this.caption,
  });

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isLiked = false;

  void _openComments() {
    showModalBottomSheet(
      context: context,
      builder:
          (context) => SizedBox(
            height: 300,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Komentar",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder:
                        (context, index) => ListTile(
                          title: Text('user$index'),
                          subtitle: Text('Komentar ke-$index'),
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Tulis komentar...',
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.send),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.userImage),
          ),
          title: Text(widget.username),
          trailing: const Icon(Icons.more_vert),
        ),
        Image.network(
          widget.postImage,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.white,
              ),
              onPressed: () => setState(() => isLiked = !isLiked),
            ),
            IconButton(
              icon: const Icon(Icons.comment),
              onPressed: _openComments,
            ),
            IconButton(icon: const Icon(Icons.send), onPressed: () {}),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('${widget.username} ${widget.caption}'),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
