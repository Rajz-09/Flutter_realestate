import 'package:flutter/material.dart';

class page_2 extends StatefulWidget {
  const page_2({super.key});

  @override
  State<page_2> createState() => _page_2State();
}

class _page_2State extends State<page_2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueAccent.shade200,
            )),
        Expanded(
            flex: 4,
            child: Container(
              color: Colors.green.shade200,
            )),
      ],
    );
  }
}
