import 'package:flutter/material.dart';

class HouseWidget extends StatelessWidget {
  List<String> HouseImage = [
    "assets/images/home1.jpeg",
    "assets/images/home2.jpeg",
    "assets/images/home3.jpeg",
    "assets/images/home4.jpeg",
    "assets/images/home5.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=0; i<5; i++)
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(8),
              height: 250,
              width: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Stack(
                  children: [
                    Container(
                      height:140,
                      child: InkWell(
                        onTap: (){},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(HouseImage[i]),
                        ),
                      ),
                    ),
                  ],
                  )
                ]
              ),
            )
        ],
      ),
    );
  }
}
