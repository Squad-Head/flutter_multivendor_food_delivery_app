import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multivendor_food_delivery_customer/presentation/constrain.dart';

class FoodDetailsScreen extends StatelessWidget {
  FoodDetailsScreen({Key? key}) : super(key: key);
  List imageList = [
    "https://images.pexels.com/photos/5995508/pexels-photo-5995508.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/4197444/pexels-photo-4197444.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/2280550/pexels-photo-2280550.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.45,
                  color: const Color(0xFFffffff),
                  child: Image.network(
                    "https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Wagyu A5 Rare hot",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const[
                                   Text("4.3"),
                                   Text(
                                    "(342 Reviews)",
                                  )
                                ],
                              ),
                            ],
                          ),
                          Container(
                              padding: const EdgeInsets.symmetric(horizontal: 6.5),
                              height: size.height * 0.05.h,
                              width: size.width * 0.25.w,
                              decoration: BoxDecoration(
                                  color: kGreen,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Container(
                                    height: size.height * 0.04.h,
                                    width: size.width * 0.06.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: IconButton(
                                        padding: const EdgeInsets.all(0),
                                        onPressed: () {},
                                        icon: const Icon(
                                          FontAwesomeIcons.minus,
                                          size: 18,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 3.h,
                                  ),
                                  SizedBox(
                                      height: size.height * 0.04.h,
                                      width: size.width * 0.07.w,
                                      child: const Center(
                                          child: Text(
                                        "1",
                                        style:  TextStyle(fontSize: 20),
                                      ))),
                                  SizedBox(
                                    width: 3.h,
                                  ),
                                  Container(
                                    height: size.height * 0.04.h,
                                    width: size.width * 0.07.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: IconButton(
                                        // alignment: Alignment.centerLeft,
                                        padding: const EdgeInsets.all(0),
                                        onPressed: () {},
                                        icon: const Icon(
                                          FontAwesomeIcons.plus,
                                          size: 18,
                                        )),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                      ),
                      Text(
                        "Ingredience",
                        style: TextStyle(
                          fontSize: 24.h,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.h),
                        height: size.height * 0.16.h,
                        width: size.width * 0.27.w,
                        // color: Colors.blueAccent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            imageList[1],
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(16),
              height: size.height * 0.10,
              width: double.infinity,
              // color: Colors.amberAccent,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Price",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "\$15.00",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.sp,
                              color: kGreen),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: size.height * 0.07.h,
                      width: size.width * 0.50.w,
                      decoration: BoxDecoration(
                          color: kGreen,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Check Out",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
