import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  List<String> PropertyType = ["Home", "Apartment", "Villa", "Commercial"];
  List<Icon> PropertyIcon = [
    Icon(Icons.house_rounded, size: 40, color: Colors.lightBlue.shade400),
    Icon(Icons.house_rounded, size: 40, color: Colors.lightBlue.shade400),
    Icon(Icons.house_rounded, size: 40, color: Colors.lightBlue.shade400),
    Icon(Icons.house_rounded, size: 40, color: Colors.blue.shade400),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFF7F6FB),
          body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Location",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54
                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.location_on,
                                color: Colors.blue.shade700,
                              ),
                              Text("Miami, ",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Florida",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          )
                      ],
                    ),
                    Container(
                      height:40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.notifications_active,
                          color: Colors.black54,
                        ),
                      )
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height:50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      label: Text("Search"),
                      suffixIcon: Container(
                        margin: EdgeInsets.all(7),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(5),

                        ),
                        child: Center(
                          child: Icon(
                            Icons.filter_list_sharp,
                            color: Colors.white,
                          ),
                        ),
                      )
                    )
                  ),
                ),
                SizedBox(height: 20),
                Text("Find Properties",
                style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height:20),
                Flexible(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.9,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(7),
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2-20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            (PropertyIcon[index]),
                            SizedBox(width: 5),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(PropertyType[index],
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                ),
                                Text(
                                  "123 items",
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 30),
                          ],
                        )
                      );
                    },
                  )
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text(
                      "Nearby Places",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
            ],
            ),
          ),
    ));
  }

}
