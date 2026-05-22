import 'package:flutter/material.dart';
import 'views/roast_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Roast Timer',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const RoastView(),
    );
  }
}