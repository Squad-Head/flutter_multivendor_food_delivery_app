import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multivendor_food_delivery_customer/presentation/authentication/signin.dart';
import 'package:multivendor_food_delivery_customer/presentation/authentication/widget/rounded_button.dart';
import 'package:multivendor_food_delivery_customer/presentation/authentication/widget/rounded_input_field.dart';
import 'package:multivendor_food_delivery_customer/presentation/constrain.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingUpScreen extends StatelessWidget {
  SingUpScreen({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Pada Order",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 40,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.22,
                child: Icon(
                  FontAwesomeIcons.signIn,
                  size: size.height * 0.10,
                  color: kPrimaryColor,
                ),
              ),
              RoundedInputField(
                emailController,
                hintText: "Email",
                icon: FontAwesomeIcons.envelope,
                inputType: InputFieldType.email,
              ),
              RoundedInputField(
                emailController,
                hintText: "Name",
                icon: FontAwesomeIcons.user,
                inputType: InputFieldType.email,
              ),
              RoundedInputField(
                emailController,
                hintText: "Password",
                icon: FontAwesomeIcons.lock,
                inputType: InputFieldType.password,
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () {},
              ),
              Text(
                "Sign Up to PandaOrder",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: darkTextColor,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Wrap(
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: lightTextColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
