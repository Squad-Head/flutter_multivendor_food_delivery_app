import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:multivendor_food_delivery_customer/presentation/authentication/otp_Screen.dart';
import 'package:multivendor_food_delivery_customer/presentation/authentication/widget/customeButton.dart';
import 'package:multivendor_food_delivery_customer/presentation/authentication/widget/customeText.dart';
import 'package:multivendor_food_delivery_customer/presentation/constrain.dart';
import 'package:multivendor_food_delivery_customer/presentation/signUp.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff14bf61),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.only(
              left: 16.w, top: size.height * 0.1.h, right: 16.w),
          child: Column(
            children: [
              Text(
                "Pada Order",
                style: TextStyle(
                  color: kButton,
                  fontSize: 40.sp,
                ),
              ),
              Text(
                "Order food You Love",
                style: TextStyle(color: kButton),
              ),
              SizedBox(
                height: size.height * 0.32.h,
              ),
              Container(
                height: size.height * 0.07.h,
                width: size.width,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Example: 0166180630",
                    labelText: "Phone number",
                    labelStyle: TextStyle(fontSize: 14.sp, color: kButton),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02.h,
              ),
              CustomButton(
                text: "Continue With Mobile Number",
                size: 20,
                icon: FontAwesomeIcons.phone,
                function: () {
                  print("Pressed");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OTPScreen()));
                },
              ),
              SizedBox(
                height: size.height * 0.02.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: kButton,
                  )),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text(
                    "Or",
                    style: TextStyle(color: kButton),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                      child: Divider(
                    color: kButton,
                  )),
                ],
              ),
              SizedBox(
                height: size.height * 0.02.h,
              ),
              CustomButton(
                text: "Continue With Google",
                size: 20,
                icon: FontAwesomeIcons.google,
                function: () {},
              ),
              SizedBox(
                height: 16.h,
              ),
              Wrap(
                children: [
                  CustomText(
                    text: "By signing up to PandaOrder you agree to our ",
                    size: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  CustomText(
                      text: "terms and conditions ",
                      size: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: kButton),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
