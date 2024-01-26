import 'package:flutter/material.dart';
import 'package:real_estate/house_widget.dart';
import 'package:real_estate/page_1.dart';
import 'package:real_estate/page_2.dart';
import 'package:real_estate/splash_screen.dart';

import 'location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData(

      ),
      home: Location()
    );
  }
}

