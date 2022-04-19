import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multivendor_food_delivery_customer/presentation/constrain.dart';
import 'package:multivendor_food_delivery_customer/presentation/home/horizontal_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List itemImage = [
    "https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/723198/pexels-photo-723198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/2425705/pexels-photo-2425705.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ];
  List itemType = ["Reccomend", "Junk food", "Vegan", "Brew", "Drinks"];
  List mostSItems = ["Burger mac beef", "SHrimp fried rice", "Noodles"];
  List ratings = ["4.3", "4.8", "5.0"];

  final resturantList = [
    "Starbucks ",
    "KFC ",
    "SDS",
    "Al Fariuj Maju",
    "Cowboy",
    "Pizza Hut",
    "Rumah Makan",
    "Salmon Steak",
  ];
  final imageList = [
    "https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/196643/pexels-photo-196643.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1775043/pexels-photo-1775043.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1410236/pexels-photo-1410236.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/3535383/pexels-photo-3535383.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/365459/pexels-photo-365459.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/3756523/pexels-photo-3756523.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/3655916/pexels-photo-3655916.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   title: Container(
      //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      //     child: Column(
      //       children: [
      //         Row(
      //           children: [
      //             Text(
      //               "Location",
      //               style: TextStyle(color: Colors.black, fontSize: 16),
      //             ),
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             Icon(Icons.near_me),
      //             Text(
      //               "Gulshan, Dhaka",
      //               style: TextStyle(fontSize: 16),
      //             )
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      //   leading: Icon(Icons.menu),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_sharp))
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Location",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.near_me),
                            Text(
                              "Gulshan, Dhaka",
                              style:  TextStyle(fontSize: 16),
                            )
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_bag_outlined))
                  ],
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://images.pexels.com/photos/6314908/pexels-photo-6314908.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                        fit: BoxFit.cover,
                        height: 80,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 15,
                      child: Container(
                        height: 60,
                        width: size.width * 0.88,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Hi, Omar!",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "You've 23 discount ticket",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Icon(
                                FontAwesomeIcons.tags,
                                size: 30.h,
                                color: kGreen,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: size.height * 0.045,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: itemType.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          height: size.height * 0.045,
                          // width: size.width * 0.5,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              itemType[index],
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                    height: 250.h,
                    child: Horizontal(
                      resturantName: resturantList,
                      resturantImages: imageList,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Near You!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text("See map"),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01.h,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  height: size.height * 0.20,
                  width: size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://images.pexels.com/photos/269874/pexels-photo-269874.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "People Are looking!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    const Text("See all"),
                  ],
                ),
                SizedBox(height: 20.h),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: mostSItems.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        // margin: EdgeInsets.only(left: 8),
                        // color: Colors.amber,
                        height: 70.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    itemImage[index],
                                    fit: BoxFit.cover,
                                    width: size.width * 0.15,
                                    height: size.height * 0.7,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        mostSItems[index],
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star_border,
                                            color: Colors.amberAccent,
                                          ),
                                          Text(ratings[index])
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Icon(FontAwesomeIcons.angleRight)
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: kGreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              color: kGreen,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search),
            label: "Search",
          ),
          const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            label: "Search",
          ),
          const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: "Search",
          ),
        ],
      ),
    );
  }
}
