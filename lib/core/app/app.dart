import 'package:flutter/material.dart';
import 'bloc_providers.dart';
import 'package:placeholder_app/core/routes/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProviders(
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
