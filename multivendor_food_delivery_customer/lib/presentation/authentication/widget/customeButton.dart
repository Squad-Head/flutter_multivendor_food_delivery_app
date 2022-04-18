import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:multivendor_food_delivery_customer/presentation/authentication/otp_Screen.dart';
import 'package:multivendor_food_delivery_customer/presentation/constrain.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.text,
    required this.size,
    required this.icon,
    required this.function,
  }) : super(key: key);

  final String text;
  final double size;
  final IconData icon;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.w,
      child: TextButton(
          onPressed: () {
            function;
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kButton),
              foregroundColor: MaterialStateProperty.all(Colors.black),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 14.h)),
              textStyle: MaterialStateProperty.all(TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                icon,
                size: 18.h,
                color: Colors.redAccent,
              ),
              Text(
                text,
                style: TextStyle(fontSize: size),
              ),
            ],
          )),
    );
  }
}
