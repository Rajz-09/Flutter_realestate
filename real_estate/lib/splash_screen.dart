import 'dart:async';

import 'package:flutter/material.dart';
import 'package:real_estate/page_1.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page_1(),
          )
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/images/brownbg.jpg",
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.asset("assets/images/homeicon.jpg"),
            Icon(Icons.home_work_outlined, color: Colors.black, size:300),
            Text(
                "Real Estate",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Fonts",
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
          ],
        )
      ],
    ));
  }
}
