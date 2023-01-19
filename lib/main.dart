import 'package:flutter/material.dart';
import 'package:wecare/login.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:wecare/widgets/ItemsWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      showSemanticsDebugger: false,
      home: LoginPage(),
    );
  }
}
