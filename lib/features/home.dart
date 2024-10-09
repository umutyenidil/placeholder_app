// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String path = '/HomePage';

  static route() => MaterialPageRoute(
        builder: (_) => content(),
      );

  static content() => const HomePage();

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to our Flutter application!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'This app is built following Clean Architecture principles, leveraging a modular and scalable structure. The core technologies used in this project are:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                '• go_router: For declarative and easy navigation throughout the app.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '• Bloc & Provider: To manage state efficiently with reactive data handling.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '• Equatable: For simplified and optimized equality comparisons within state management.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '• Dartz: For functional programming, handling Either types and improving error management.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '• Get_it: For service locator and dependency injection, ensuring smooth decoupling of classes.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'The application fetches data from:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '• Albums: Using the https://jsonplaceholder.typicode.com/users/1/albums API to fetch album data.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '• Posts: Fetching post data from https://jsonplaceholder.typicode.com/posts.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Navigate through the app to explore albums and posts, all backed by a clean and maintainable architecture.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Enjoy your experience!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
