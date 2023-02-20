import 'package:flutter/material.dart';
import 'package:inter/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InterPText',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Myhomepage(),
    );
  }
}
