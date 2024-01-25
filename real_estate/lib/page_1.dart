import 'package:flutter/material.dart';

import 'location.dart';

class page_1 extends StatefulWidget {
  const page_1({super.key});

  @override
  State<page_1> createState() => _page_1State();
}

class _page_1State extends State<page_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/scr1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Color(0x77000000),
        ),
        Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 90.0),
                      child: Text("Find Your Dream\n Home Easily",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                          textAlign: TextAlign.center)),
                  Container(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                          "Now you can find your dream house\n easily and quickly at a low price",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                          textAlign: TextAlign.center)),
                ],
              ),
            ),
            Expanded(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Location(),
                          ));
                    },
                    icon: Icon(Icons.play_circle_fill_rounded,
                        color: Colors.white, size: 70))),
          ],
        )
      ],
    ));
  }
}
