import 'package:flutter/material.dart';
import 'package:placeholder_app/features/post/domain/entities/post_entity.dart';

class PostCard extends StatelessWidget {
  final PostEntity post;

  const PostCard({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          title: Text(
            post.title,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                post.body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
