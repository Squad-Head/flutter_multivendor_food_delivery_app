import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multivendor_food_delivery_customer/presentation/authentication/widget/custome_text.dart';

import 'package:multivendor_food_delivery_customer/presentation/authentication/widget/rounded_button.dart';
import 'package:multivendor_food_delivery_customer/presentation/authentication/widget/rounded_input_field.dart';
import 'package:multivendor_food_delivery_customer/presentation/constrain.dart';
import 'package:multivendor_food_delivery_customer/presentation/home/homepage.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final List<Color> cl = [kPrimaryColor, kGreen];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Color(0xff14bf61),
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
                  color: kPrimaryColor,
                  fontSize: 40.sp,
                ),
              ),
              const Text(
                "Order food You Love",
                style: TextStyle(color: kPrimaryColor),
              ),
              SizedBox(
                height: size.height * 0.32.h,
                child: ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (Rect bounds) {
                    return RadialGradient(
                      center: Alignment.center,
                      radius: 1.0,
                      colors: <Color>[
                        kPrimaryColor,
                        kGreen,
                      ],
                      tileMode: TileMode.repeated,
                    ).createShader(bounds);
                  },
                  child: Icon(
                    FontAwesomeIcons.utensils,
                    size: size.height * 0.20,
                  ),
                ),
              ),
              RoundedInputField(
                emailController,
                hintText: "Email",
                inputType: InputFieldType.email,
                icon: FontAwesomeIcons.envelope,
              ),
              SizedBox(
                height: size.height * 0.02.h,
              ),
              RoundedInputField(
                passwordController,
                hintText: "Password",
                inputType: InputFieldType.password,
                icon: FontAwesomeIcons.lock,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              SizedBox(
                height: size.height * 0.02.h,
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
