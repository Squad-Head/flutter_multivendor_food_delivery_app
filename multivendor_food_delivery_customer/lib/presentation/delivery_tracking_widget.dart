import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multivendor_food_delivery_customer/presentation/constants.dart';

class DeliveryTrackingWidget extends StatelessWidget {
  const DeliveryTrackingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(35.w),
      height: 500.h,
      width: 500.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.delivery_dining,
            size: 120.sp,
            color: const Color.fromARGB(255, 69, 62, 133),
          ),
          const Spacer(),
          Text('3', style: kPrimaryHeadingStyle),
          const Spacer(),
          Text(
            'Total Completed Orders',
            style: kSecondaryHeadingStyle,
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: const Color(0xFFe4f0f4),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFdddddd),
              blurRadius: 10,
              blurStyle: BlurStyle.normal,
              offset: Offset(
                5.0,
                5.0,
              ),
              spreadRadius: 2.0,
            ),
          ]),
    );
  }
}
