import 'package:check_demo/screen/login.dart';
import 'package:check_demo/test_demo/trainer_writedata.dart';
import 'package:check_demo/test_demo/writData.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WriteData(),
    );

  }
}

