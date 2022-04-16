import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StockInfo extends StatelessWidget {
  const StockInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40.h,
            color: Colors.green,
            child: Stack(
              children: [
                Positioned(
                    left: 8.w,
                    top: 10.h,
                    child: const Text(
                      "O product(s) low in stock",
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(height: 4.h),
                Positioned(
                    left: 8.w,
                    top: 24.h,
                    child: const Text(
                      "More info...",
                    )),
              ],
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Container(
            height: 40.h,
            color: Colors.red,
            child: Stack(
              children: [
                Positioned(
                    left: 8.w,
                    top: 10.h,
                    child: const Text(
                      "4 product(s) stock out",
                      style: TextStyle(color: Colors.white),
                    )),
                Positioned(
                  left: 8.w,
                  top: 24.h,
                  child: const Text(
                    "More info...",
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
