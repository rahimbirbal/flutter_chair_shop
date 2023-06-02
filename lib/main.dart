import 'package:flutter/material.dart';
import 'package:flutter_application_4/Pages/introduction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Introduction(),
    );
  }
}