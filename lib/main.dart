import 'package:flutter/material.dart';
import '../pages/home/homepages.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePages(),
      ),
    );
  }
}
