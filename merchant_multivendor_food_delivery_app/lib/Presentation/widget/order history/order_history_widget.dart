import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class OrderHistoryWidget extends StatelessWidget {
  const OrderHistoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.h,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.w, color: const Color(0xFFf2f2f9)),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10.w),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Id: #UFE858',
                  style: kTitleStyle,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  '17 April 2022, 6:30 p.m.',
                  style: kTextStyle.copyWith(fontSize: 16.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Order Accepted',
                  style: kTextStyle.copyWith(
                      fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$152', // TODO: price
                  style: kTitleStyle,
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Text(''),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Payment Method', // TODO: get from order
                  style: kTextStyle.copyWith(fontSize: 16.sp),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
