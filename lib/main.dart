import 'package:flutter/material.dart';
import 'package:onboard_animation/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Members Recruitment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const Screen(),
    );
  }
}