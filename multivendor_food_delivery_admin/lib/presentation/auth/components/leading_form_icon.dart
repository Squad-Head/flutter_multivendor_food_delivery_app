import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeadingFormIcon extends StatelessWidget {
  const LeadingFormIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        // color: AppColor.secondaryColor,
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
