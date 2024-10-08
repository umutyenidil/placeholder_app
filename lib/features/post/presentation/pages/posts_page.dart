import 'package:flutter/material.dart';

class PostsPage extends StatelessWidget {
  static const String path = '/PostsPage';

  static route() => MaterialPageRoute(
        builder: (_) => content(),
      );

  static content() => const PostsPage();

  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Posts',
        ),
        centerTitle: false,
      ),
    );
  }
}
