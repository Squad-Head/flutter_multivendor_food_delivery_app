import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widget/deliveryWelcome/stepper_widget.dart';
import '../widget/locationaccess/google_map_widget.dart';

class PlaceOrder extends StatelessWidget {
  const PlaceOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {}, //TODO: implement later
              icon: const Icon(Icons.arrow_back_ios_outlined),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Order Id: #E514Fe',
              style: kTitleStyle,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {}, // TODO: Impement Later
              icon: Icon(
                Icons.info_outlined,
                size: 30.sp,
              ),
            )
          ],
        ),
        SizedBox(
          child: const MapSample(),
          height: 300.h,
          width: double.infinity,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 80.h,
          width: double.infinity,
          color: const Color(0xFFfee1cc),
          child: Row(
            children: [
              Text(
                'Food Order',
                style: kPrimaryHeadingStyle,
              ),
              const Spacer(),
              Text(
                '\$252',
                style: kPrimaryHeadingStyle,
              )
            ],
          ),
        ),
        const StepperWidget(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          height: 50.h,
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Use current location',
              style: kTitleStyle.copyWith(color: Colors.white),
            ),
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFFFFFFFF)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF22a45c)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
