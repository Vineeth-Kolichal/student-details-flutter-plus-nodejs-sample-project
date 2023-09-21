import 'package:flutter/material.dart';

import 'application/presentation/home_screen.dart';

void main(List<String> args) {
  runApp(StudentApp());
}

class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
