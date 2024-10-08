import 'package:flutter/material.dart';
import 'package:placeholder_app/features/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage.content(),
    );
  }
}
