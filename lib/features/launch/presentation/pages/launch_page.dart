import 'package:flutter/material.dart';
import 'package:placeholder_app/core/routes/router.dart';
import 'package:placeholder_app/features/home.dart';
import 'package:placeholder_app/features/post/presentation/pages/posts_page.dart';

class LaunchPage extends StatefulWidget {
  static const String path = '/LaunchPage';

  static route() =>
      MaterialPageRoute(
        builder: (_) => content(),
      );

  static content() => const LaunchPage();

  const LaunchPage({super.key});

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2)).then((_) {
      router.go(PostsPage.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
