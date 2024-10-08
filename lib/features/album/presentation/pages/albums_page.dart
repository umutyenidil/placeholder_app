import 'package:flutter/material.dart';

class AlbumsPage extends StatelessWidget {
  static const String path = '/AlbumsPage';

  static route() => MaterialPageRoute(
        builder: (_) => content(),
      );

  static content() => const AlbumsPage();

  const AlbumsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Albums',
        ),
        centerTitle: false,
      ),
    );
  }
}
