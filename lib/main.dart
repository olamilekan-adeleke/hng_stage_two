import 'package:flutter/material.dart';
import 'package:hng_stage_two/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG Stage Two',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const HomeScreenView(),
    );
  }
}
