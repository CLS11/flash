import 'package:flutter/material.dart';
import 'package:flash/home_page.dart';

void main() {
  runApp(Flash());
}

class Flash extends StatelessWidget {
  const Flash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}