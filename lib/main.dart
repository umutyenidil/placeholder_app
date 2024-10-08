import 'package:flutter/material.dart';
import 'package:placeholder_app/core/app/app.dart';
import 'package:placeholder_app/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await injectDependencies();

  runApp(const App());
}