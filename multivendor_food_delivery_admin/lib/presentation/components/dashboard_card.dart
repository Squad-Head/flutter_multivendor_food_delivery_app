import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    Key? key,
    this.img,
    required this.color,
    required this.text,
    required this.valueText,
  }) : super(key: key);

  final String? img;
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
            left: 2.w,
            bottom: 20.h,
            child: Image.asset(
              img!,
              height: 24.h,
              width: 24.w,
            ),
          ),
          Positioned(
            right: 4.w,
            top: 16.h,
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            right: 8.w,
            bottom: 20.h,
            child: Text(
              valueText,
              // style: TextStyle(),
            ),
          )
        ],
      ),
      color: color,
    );
  }
}
