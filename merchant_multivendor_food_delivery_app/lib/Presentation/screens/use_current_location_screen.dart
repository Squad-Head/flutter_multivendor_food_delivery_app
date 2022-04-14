import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class UserCurrentLocationScreen extends StatelessWidget {
  const UserCurrentLocationScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(
              'assets/illustrations/location_access.svg',
              fit: BoxFit.contain,
            ),
          ),
          Text(
            'Enable your location',
            style: kPrimaryHeadingStyle,
          ),
          Text(
            'To search for the best nearby driver, we want to know your current location',
            textAlign: TextAlign.center,
            style: kSecondaryHeadingStyle,
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
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
                    MaterialStateProperty.all<Color>(const Color(0xFFfc6011)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0.r),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    );
  }
}
