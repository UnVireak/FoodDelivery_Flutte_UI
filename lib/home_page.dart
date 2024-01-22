import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  List foods = ["Burger", "Pizza", "Snacks", "Water"];

  List foods2 = ["Chicken Burger", "Cheese Pizza"];
  List<Color> bgColor = [
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7)
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery to",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        Text(
                          "Phon Penh, Cambodai",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/images/profile.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      left: 40,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 3),
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 239, 237, 237),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search your food here",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search)),
                )),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("assets/images/banner.jpg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: foods.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: EdgeInsets.only(left: 15),
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: bgColor[index],
                      borderRadius: BorderRadius.circular(10),
                      ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/${foods[index]}.jpg",
                      height: 80,
                      width: 	80,
                      ),
                      Text(
                        foods[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ), 
                );
              },
            ),
          ),
          Padding(
            
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500	
                  ),
                ),
              TextButton(onPressed: (){},
               child: Text("See all", 
               style: TextStyle(
                color: Colors.red,
                fontSize: 17,
                fontWeight: FontWeight.w500
               ),),
               )
              ],
            ),
          ),
          SizedBox(height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: foods2.length,
            itemBuilder: (context, index){
              return InkWell(
                onTap: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width /1.4,
                  margin: EdgeInsets.only(
                    left: 15, top: 5, bottom: 5, right: 5,
                    
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow:[ BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2
                  ),],
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset("assets/images/${foods2[index]}.jpg",
                    height: 120,
                    width: MediaQuery.of(context).size.width/ 1.4,
                    fit: BoxFit.cover,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left:10 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(foods2[index],
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text("Fast Food",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45
                          ),
                          ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.star,
                            color: Color(0xFFFF2F08),
                            size: 20,
                            ),

                          ],
                        )
                        ],
                      )
                    ],
                  ),
                  )
                  ],
                ),
                ),
              );
            },
          ),
          ),
          SizedBox(height: 50,)
        ]),
      ),
    );
  }
}

// 28:02
