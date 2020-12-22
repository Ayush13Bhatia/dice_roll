import 'package:dice_roller/HomePage.dart';
import 'package:flutter/material.dart';

// TODO: Update the pubspec file for immage assets first

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Color(0X5A1C01)),
      home: HomePage(),
    );
  }
}
