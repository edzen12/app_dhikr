import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const Mobile1());
}

class Mobile1 extends StatelessWidget {
  const Mobile1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
