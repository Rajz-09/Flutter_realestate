import 'package:flutter/material.dart';

class Housewidget extends StatelessWidget {
  List<String> HouseImage = [
    "assets/images/home1.jpeg",
    "assets/images/home2.jpeg",
    "assets/images/home3.jpeg",
    "assets/images/vhome.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
     return SafeArea(
         child: Scaffold(
          body: Stack(
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/images/home1.jpeg",
                    fit: BoxFit.fill,
                    height: 400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 350),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),

                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                              "Classic House",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                  color: Colors.black
                              )
                          ),
                        ),
                        SizedBox(height:10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              Icon(Icons.location_on,
                              ),
                              Text("Florida",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 50),
                          child: Text(
                              "House Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                  color: Colors.black
                              )
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                                  "Lorem ipsum is imply dummy lorem ipsum is imply dummy lorem ipsum is imply dummy lorem ipsum is imply dummy",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black54,
                              )
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                              "Price",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black54,
                              )
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              Text(
                                  "1200",
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  )
                              ),
                              Text(
                                  "/month",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black54,
                                  )
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: Container(
                                  child: TextButton(
                                      onPressed: (){},
                                      child: Text("Book Now"),
                                  ),
                                ),
                              )
                              ],
                              )
                              ,)

                          ]),
                        ]),
                        // SizedBox(
                        //   height: 26,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
                    ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Icon(
                        Icons.list_alt_rounded,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ],
              ),
              ])
          ),
        );


    // body: Column(
    //   children: [
    //     // Header section
    //     Row(
    //       children: [
    //         Text(
    //           'Clasals House',
    //           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    //         ),
    //         Spacer(),
    //         Container(
    //           width: 10.0,
    //           height: 2.0,
    //           color: Colors.black,
    //         ),
    //       ],
    //     ),
    //     // House image section
    //     Container(
    //       height: 200.0,
    //       decoration: BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage('assets/house_image.png'),
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //     // House details section
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Text(
    //           '\$1200',
    //           style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    //         ),
    //         // Button(
    //         //   onPressed: () {
    //         //     // Handle "Book Now" button click
    //         //   },
    //         //   child: Text('Book Now'),
    //         // ),
    //       ],
    //     ),
    //     // Description and additional information sections
    //     Text(
    //       'A cozy and beautiful house with 3 bedrooms, 2 bathrooms, and a spacious living area...',
    //       style: TextStyle(fontSize: 16.0),
    //     ),
    //     Text(
    //       'Additional details...',
    //       style: TextStyle(fontSize: 14.0),
    //     ),
    //   ],
    // )
    }
}
