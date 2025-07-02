import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(FinNewsHubApp());
}

class FinNewsHubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinNews Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}