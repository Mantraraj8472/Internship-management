import 'package:flutter/material.dart';
import 'package:internship_management/screens/internship_page.dart';

import 'widgets/my_card.dart';

import 'screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InternshipScreen(),
    );
  }
}
