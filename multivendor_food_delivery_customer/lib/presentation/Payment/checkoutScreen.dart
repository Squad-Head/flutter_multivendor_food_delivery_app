import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          FontAwesomeIcons.angleLeft,
          color: Colors.black,
        ),
        title: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "KFC - Gulsan",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Distance from you 6.1Km",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12.sp,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: Stack(children: [
        const SingleChildScrollView(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * 0.12.h,
            // width: size.width * 0.27.w,
            color: Colors.blueAccent,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("data"),
                  Text("RM10.00"),
                ],
              ),
            ]),
          ),
        )
      ]),
    );
  }
}
