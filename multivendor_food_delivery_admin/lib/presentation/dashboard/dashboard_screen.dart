import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor_food_delivery_admin/presentation/constant.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    // var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * .2,
              child: Row(
                children: const [
                  Expanded(
                    child: DashboardCard(
                      color: Colors.purple,
                      img: "assets/icons/order.png",
                      text: "Orders",
                      valueText: "0",
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  Expanded(
                    child: DashboardCard(
                        img: "assets/icons/add-user.png",
                        color: Colors.blue,
                        text: "Marchant Request",
                        valueText: "5"),
                  ),
                  SizedBox(width: defaultPadding),
                  Expanded(
                      child: DashboardCard(
                          img: "assets/icons/delivery.png",
                          color: Colors.redAccent,
                          text: "Delivery Boys",
                          valueText: "25")),
                  SizedBox(width: defaultPadding),
                  Expanded(
                      child: DashboardCard(
                          img: "assets/icons/product.png",
                          color: Colors.green,
                          text: "Products",
                          valueText: "1024+")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    Key? key,
    required this.img,
    required this.color,
    required this.text,
    required this.valueText,
  }) : super(key: key);

  final String img;
  final Color color;
  final String text;
  final String valueText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      child: Stack(
        children: [
          Positioned(
            left: 10.sp,
            top: 30.sp,
            child: Image.asset(
              img,
              height: 36.h,
            ),
          ),
          Positioned(
            right: 10.sp,
            top: 20.sp,
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 18.sp),
            ),
          ),
          Positioned(
            right: 10.sp,
            bottom: 20.sp,
            child: Text(
              valueText,
              style: TextStyle(fontSize: 22.sp),
            ),
          )
        ],
      ),
      color: color,
    );
  }
}
