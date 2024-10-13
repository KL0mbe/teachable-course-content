import 'package:flutter/material.dart';
import 'package:teachable_course_content/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Multi Orgasmic Man',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
