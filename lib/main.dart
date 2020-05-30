import 'package:flutter/material.dart';
import 'package:mj_college/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muffakham Jah College of Engineering and Technology',
      home: Home(),
    );
  }
}

